/**
 * QueryProcessor.cc
 *
 * Process user queries.
 *
 * Copyright (c) 2008 Linas Vepstas <linas@linas.org>
 */
#include <stdio.h>

#include "AtomSpace.h"
#include "CogServer.h"
#include "MindAgent.h"
#include "Node.h"
#include "PatternMatch.h"
#include "QueryProcessor.h"

using namespace opencog;

QueryProcessor::QueryProcessor(void)
{
}

QueryProcessor::~QueryProcessor()
{
}

void QueryProcessor::run(CogServer *server)
{
	AtomSpace *as = server->getAtomSpace();
	// Handle h = as->getHandle(qtype, "test");
	
	// Look for recently asserted assertions.
	Type atype = ClassServer::getType("AssertionLink");
	std::list<Handle> asrt_list;
	as->getHandleSet(back_inserter(asrt_list), atype, NULL);

	// Loop over all recent assertions, and take care of them.
	while(!asrt_list.empty())
	{
		Handle h = asrt_list.front();
		do_assertion(h);
		asrt_list.pop_front();
		if (h) as->removeAtom(h);
	}

	/* XXX HACK ALERT -- no scheduling, so just sleep */
	usleep(1000000);  // 1 second
	usleep(10000);  // 10 millisecs == 100HZ
}

/**
 * Return pointer to Node, if the handle refers to a Link, 
 * and this link contains an (outgoing) node whose name is match_name.
 * Return NULL otherwise.
 */
static Node * link_contains_node_name(Handle h, const char * match_name)
{
	Atom *atom = TLB::getAtom(h);
	const std::vector<Handle> &vh = atom->getOutgoingSet();

	for (size_t i=0; i<vh.size(); i++)
	{
		Handle rel = vh[i];
		Atom *arel = TLB::getAtom(rel);
		Node *n = dynamic_cast<Node *>(arel);
		if (n)
		{
			const std::string& name = n->getName();
			if (0 == strcmp(name.c_str(), match_name)) return n;
		}
	}
	return NULL;
}

void QueryProcessor::do_assertion(Handle h)
{
	printf ("duuuude found assertion handle=%p\n", h);
	Atom *atom = TLB::getAtom(h);
	const std::vector<Handle> &vh = atom->getOutgoingSet();
	std::vector<Handle> varlist;

	for (size_t i=0; i<vh.size(); i++)
	{
		Handle rel = vh[i];
		Node *n = link_contains_node_name(rel, "_$qVar");
		if (n)
		{
			printf ("duuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuude\n");
			printf ("its %s\n", n->toString().c_str());
			varlist.push_back(rel);
		}
	}
	PatternMatch pm;
	pm.match(h, varlist);
}

/* ======================= END OF FILE ==================== */

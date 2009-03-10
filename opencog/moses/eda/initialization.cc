#include "eda/initialization.h"

namespace eda {

  void occam_randomize(const field_set& fs,instance& inst,
		       field_set::const_contin_iterator it,
		       RandGen& rng) {
    size_t begin=fs.contin_to_raw_idx(it.idx());
    size_t end=begin+fs.contin()[it.idx()].depth;
    size_t middle=begin+rng.randint(end-begin+1);

    for (;begin!=middle;++begin)
      fs.set_raw(inst,begin,rng.randbool() ? 
		 field_set::contin_spec::Left : field_set::contin_spec::Right);
    for (;begin!=end;++begin)
      fs.set_raw(inst,begin,field_set::contin_spec::Stop);
  }

  //tree should be roughly balanced for this to be effective - otherwise there
  //will be a bias towards smaller programs
  void occam_randomize(const field_set& fs,instance& inst,
		       field_set::const_onto_iterator it,
		       RandGen& rng) {
     //if there are n levels
    size_t begin=fs.onto_to_raw_idx(it.idx());
    size_t end=begin+fs.onto()[it.idx()].depth;
    size_t middle=begin+rng.randint(end-begin+1);

    const onto_tree& tr=(*fs.onto()[it.idx()].tr);
    onto_tree::iterator node=tr.begin();

    for (;begin!=middle && !node.is_childless();++begin) {
      int child_idx=rng.randint(node.number_of_children());
      fs.set_raw(inst,begin,field_set::onto_spec::from_child_idx(child_idx));
      node=tr.child(node,child_idx);
    }
    for (;begin!=end;++begin)
      fs.set_raw(inst,begin,field_set::onto_spec::Stop);
  }

  void occam_randomize_onto(const field_set& fs,instance& inst,
		       RandGen& rng) {
    for (field_set::const_onto_iterator it=fs.begin_onto(inst);
	 it!=fs.end_onto(inst);++it)
      occam_randomize(fs,inst,it,rng);
  }

  void occam_randomize_contin(const field_set& fs,instance& inst,
		       RandGen& rng) {
    for (field_set::const_contin_iterator it=fs.begin_contin(inst);
	 it!=fs.end_contin(inst);++it)
      occam_randomize(fs,inst,it,rng);
  }

  void uniform_randomize_bits(const field_set& fs,instance& inst,
		       RandGen& rng) {
    //could be faster
    generate(fs.begin_bits(inst),fs.end_bits(inst),bind(&opencog::RandGen::randbool, ref(rng)));
  }

  void uniform_randomize_disc(const field_set& fs,instance& inst,
		       RandGen& rng) {
    for (field_set::disc_iterator it=fs.begin_disc(inst);
	 it!=fs.end_disc(inst);++it)
      it.randomize(rng);
  }

  void randomize(const field_set& fs,instance& inst,
		       RandGen& rng) {
    occam_randomize_onto(fs,inst,rng);
    occam_randomize_contin(fs,inst,rng);
    uniform_randomize_bits(fs,inst,rng);
    uniform_randomize_disc(fs,inst,rng);
  }
}

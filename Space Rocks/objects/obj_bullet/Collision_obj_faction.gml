if (other.id == creator) exit;

instance_destroy();

//CHECK IF OBJECT IS PART OF OUR FACTION	
if (other.faction == faction) exit;

//DAMAGE OPPONENT
with(other) event_perform(ev_other,ev_user1);


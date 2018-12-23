% package 3d
input 3d

% polyhedra definitions
input 3dpoly

% set scale
drawing_scale:=8cm;

%
filled_faces:=true; % default value

beginfig(1);
  numeric a,ang;
  a = 0; ang = 2;
  assign_obj("obja","octahedron");
  new_vec(v_a);
  vec_def_vec_(v_a,vec_K);vec_mult_(v_a,v_a,4);%put_obj("obja",v_a,1,0,0,0);
  free_vec(v_a);
  set_point_(Obs,-rd*cosd(a*ang),-rd*sind(a*ang),1);
  Obs_phi:=90;Obs_dist:=2;h_field:=100;v_field:=150;
  point_of_view_obj("obja",1,Obs_phi);% fix point 1 of object |name_a|
  draw_obj("obja");
endfig;

end

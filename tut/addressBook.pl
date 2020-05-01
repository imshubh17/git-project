use Tkx;

Tkx::wm_title(".", "ADDRESS  BOOK");
Tkx::ttk__frame(".c",  -padding => "30 30 30 30");
Tkx::grid( ".c", -column => 0, -row => 0, -sticky => "NWES");
Tkx::grid_columnconfigure( ".", 0, -weight => 1); 
Tkx::grid_rowconfigure(".", 0, -weight => 1);
Tkx::font_create("font", -family => "Helvetica", -size => 12, -weight => "bold");

Tkx::ttk__entry(".c.name", -width => 25, -textvariable => \$name, -font => "font");
Tkx::grid(".c.name", -column => 2, -row => 1, -sticky => "W");

Tkx::ttk__entry(".c.age", -width => 25, -textvariable => \$age, -font => "font");
Tkx::grid(".c.age", -column => 2, -row => 2, -sticky => "W");

Tkx::ttk__entry(".c.address", -width => 25, -textvariable => \$address, -font => "font");
Tkx::grid(".c.address", -column => 2, -row => 3, -sticky => "W");

Tkx::ttk__entry(".c.number", -width => 25, -textvariable => \$number, -font => "font");
Tkx::grid(".c.number", -column => 2, -row => 4, -sticky => "W");

Tkx::ttk__entry(".c.email", -width => 25, -textvariable => \$email, -font => "font");
Tkx::grid(".c.email", -column => 2, -row => 5, -sticky => "W");


Tkx::ttk__button(".c.enter", -text => "Enter", -command => sub {enter();});
Tkx::grid(".c.enter", -column => 1, -row => 6, -sticky => "W");

Tkx::ttk__button(".c.clear", -text => "Clear", -command => sub {clear();});
Tkx::grid(".c.clear", -column => 2, -row => 6, -sticky => "WE");

Tkx::grid( Tkx::ttk__label(".c.a", -text => "NAME: ", -font => "font"),-column => 1, -row => 1, -sticky => "W");
Tkx::grid( Tkx::ttk__label(".c.b", -text => "AGE:", -font => "font"), -column => 1, -row => 2, -sticky => "W");
Tkx::grid( Tkx::ttk__label(".c.d", -text => "ADDRESS : ", -font => "font"),-column => 1,-row => 3, -sticky => "W");
Tkx::grid( Tkx::ttk__label(".c.e", -text  => "CONTACT NO. : ", -font => "font"), -column => 1, -row => 4, -sticky => "W");
Tkx::grid( Tkx::ttk__label(".c.f", -text => "E-MAIL ID:",-font => "font"), -column => 1, -row => 5, -sticky => "W");

sub enter
{
  $filename = 'entry.txt';
  open($WRITEFILE, '>>', $filename);
  $data = "$name,$age,$address,$number,$email\n";
  print $WRITEFILE "$data";
  close $WRITEFILE;
  
  Tkx::tk___messageBox(-title=>"Conformation",-message => "Your Record has been Entered Successfully!!!");
}

sub clear 
{
  $name='';
  $age='';
  $address='';
  $number='';
  $email=''; 
  
  Tkx::tk___messageBox(-title=>"Information",-message => "Book Cleared Successfully!!!",);
}
Tkx::MainLoop();
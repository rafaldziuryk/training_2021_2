class Employee {
  final int id;
  final String name;
  final String lastName;
  final Gender gender;
  final int age;
  final String occupation;
  final int experience;
  final int salary;

  Employee(this.id, this.name, this.lastName, this.gender, this.age, this.occupation, this.experience, this.salary);

  factory Employee.fromData(int id, String name, String lastName, String gender, String age, String occupation, String experience, String salary) {
    return Employee(id, name, lastName, gender == "Female" ? Gender.female : Gender.male, int.parse(age), occupation, int.parse(experience), int.parse(salary));
  }
}

enum Gender {
female, male
}

class Repository {
  List<Employee> data() {
        return [
Employee.fromData(0,"Miller","Brown","Male","28","Fine Artist","9","863"),
Employee.fromData(1,"Hailey","Craig","Female","20","Pharmacist","5","1130"),
Employee.fromData(2,"Annabella","Davis","Female","19","Engineer","5","1602"),
Employee.fromData(3,"Derek","Wells","Male","26","Composer","1","7476"),
Employee.fromData(4,"Carina","Grant","Female","25","Dancer","7","3651"),
Employee.fromData(5,"Lana","Harrison","Female","30","Social Worker","15","1191"),
Employee.fromData(6,"Sarah","Gibson","Female","20","Mechanic","2","9267"),
Employee.fromData(7,"Maddie","Higgins","Female","28","Fine Artist","12","8313"),
Employee.fromData(8,"Vivian","Farrell","Female","23","Salesman","3","1600"),
Employee.fromData(9,"Alfred","Montgomery","Male","19","Geologist","5","6283"),
Employee.fromData(10,"Patrick","Spencer","Male","30","Manager","5","3106"),
Employee.fromData(11,"Charlie","Riley","Male","30","Teacher","9","7808"),
Employee.fromData(12,"Abraham","Ferguson","Male","18","Jeweller","6","3208"),
Employee.fromData(13,"Adrian","Martin","Male","20","Programmer","3","4059"),
Employee.fromData(14,"Luke","Ellis","Male","29","Cook","13","9495"),
Employee.fromData(15,"Maria","Cunningham","Female","21","Singer","9","8913"),
Employee.fromData(16,"Paige","Robinson","Female","22","Teacher","0","1926"),
Employee.fromData(17,"Caroline","Ross","Female","21","Physicist","9","9943"),
Employee.fromData(18,"Blake","Watson","Male","18","Pharmacist","2","3326"),
Employee.fromData(19,"Stella","Gray","Female","20","Botanist","3","8476"),
Employee.fromData(20,"Caroline","Armstrong","Female","28","Veterinarian","4","2233"),
Employee.fromData(21,"Madaline","Wells","Female","18","Biochemist","3","7651"),
Employee.fromData(22,"Aiden","Walker","Male","28","Meteorologist","5","4559"),
Employee.fromData(23,"David","Evans","Male","19","Auditor","5","7486"),
Employee.fromData(24,"Charlotte","Taylor","Female","24","Archeologist","6","6380"),
Employee.fromData(25,"Justin","Stewart","Male","23","Auditor","8","4893"),
Employee.fromData(26,"Lenny","Cooper","Male","22","Manager","0","5031"),
Employee.fromData(27,"Brad","Brooks","Male","24","Engineer","3","3597"),
Employee.fromData(28,"Savana","Fowler","Female","24","Physicist","4","5927"),
Employee.fromData(29,"Vanessa","Adams","Female","27","Scientist","7","9269"),
Employee.fromData(30,"Marcus","Baker","Male","25","Aeroplane Pilot","3","2719"),
Employee.fromData(31,"Jared","Cooper","Male","28","Auditor","5","5641"),
Employee.fromData(32,"Emma","Craig","Female","25","Social Worker","2","9165"),
Employee.fromData(33,"Sarah","Ross","Female","30","Mechanic","4","4893"),
Employee.fromData(34,"Thomas","Payne","Male","27","Programmer","11","9301"),
Employee.fromData(35,"Victoria","Russell","Female","22","Carpenter","2","6539"),
Employee.fromData(36,"Hailey","Campbell","Female","28","Interior Designer","8","6801"),
Employee.fromData(37,"Emma","Tucker","Female","21","Composer","0","9350"),
Employee.fromData(38,"Ryan","Holmes","Male","25","Scientist","6","3000"),
Employee.fromData(39,"Chester","Parker","Male","20","Chef","2","7854"),
Employee.fromData(40,"Thomas","Hunt","Male","19","Baker","8","1191"),
Employee.fromData(41,"Julia","Cunningham","Female","22","Lecturer","7","4621"),
Employee.fromData(42,"Elian","Gray","Male","29","Pharmacist","2","6449"),
Employee.fromData(43,"Frederick","Lloyd","Male","27","Agronomist","2","9385"),
Employee.fromData(44,"Lenny","Richards","Male","20","Veterinarian","9","7485"),
Employee.fromData(45,"Daniel","Cooper","Male","20","Hairdresser","2","9747"),
Employee.fromData(46,"Derek","Stevens","Male","28","Baker","14","5582"),
Employee.fromData(47,"Nicholas","Hunt","Male","23","Architect","2","5917"),
Employee.fromData(48,"Harold","Jones","Male","23","Botanist","9","1195"),
Employee.fromData(49,"George","Farrell","Male","26","Lecturer","13","3742"),
// Employee.fromData(50,"Robert","Richardson","Male","23","Medic","0","2534"),
// Employee.fromData(51,"Michael","Ross","Male","24","Medic","4","8805"),
// Employee.fromData(52,"Eric","Jones","Male","30","Interpreter","3","1203"),
// Employee.fromData(53,"Alan","Phillips","Male","25","Botanist","12","2789"),
// Employee.fromData(54,"Kelsey","Richardson","Female","24","Jeweller","2","1548"),
// Employee.fromData(55,"Melissa","Henderson","Female","20","Producer","4","3361"),
// Employee.fromData(56,"Lana","Armstrong","Female","20","Florist","1","3120"),
// Employee.fromData(57,"Martin","Davis","Male","27","Botanist","8","5356"),
// Employee.fromData(58,"Mary","Hall","Female","21","Archeologist","0","3666"),
// Employee.fromData(59,"Sofia","Warren","Female","22","Medic","8","3477"),
// Employee.fromData(60,"Anna","Murphy","Female","27","Salesman","1","4057"),
// Employee.fromData(61,"Haris","Henderson","Male","30","Salesman","9","7626"),
// Employee.fromData(62,"Derek","Cameron","Male","28","Veterinarian","7","9824"),
// Employee.fromData(63,"Daniel","Taylor","Male","29","Fashion Designer","1","9816"),
// Employee.fromData(64,"Elise","Cameron","Female","19","Graphic Designer","5","2494"),
// Employee.fromData(65,"Stuart","Cooper","Male","21","Cook","8","6160"),
// Employee.fromData(66,"Alberta","Edwards","Female","24","Historian","0","7852"),
// Employee.fromData(67,"Edward","Elliott","Male","28","Salesman","11","4370"),
// Employee.fromData(68,"Victoria","Sullivan","Female","22","Astronomer","0","4565"),
// Employee.fromData(69,"Lucia","Johnston","Female","26","Florist","5","1436"),
// Employee.fromData(70,"Valeria","Stevens","Female","30","Composer","2","2339"),
// Employee.fromData(71,"Reid","Alexander","Male","22","Actor","0","7964"),
// Employee.fromData(72,"Luke","Bennett","Male","19","Hairdresser","8","3432"),
// Employee.fromData(73,"Emily","Scott","Female","18","Mechanic","7","4193"),
// Employee.fromData(74,"Amelia","Farrell","Female","18","Physicist","8","9632"),
// Employee.fromData(75,"Jasmine","Mason","Female","21","Salesman","1","7731"),
// Employee.fromData(76,"Ada","Brown","Female","29","Driver","9","7738"),
// Employee.fromData(77,"Brad","Morris","Male","26","Electrician","6","5235"),
// Employee.fromData(78,"Haris","Higgins","Male","18","Astronomer","7","5638"),
// Employee.fromData(79,"Michael","Ferguson","Male","24","Police Officer","5","9644"),
// Employee.fromData(80,"Stella","Russell","Female","25","Archeologist","5","1491"),
// Employee.fromData(81,"Haris","Edwards","Male","27","Economist","10","2218"),
// Employee.fromData(82,"Lucia","Martin","Female","25","Architect","11","1126"),
// Employee.fromData(83,"Melissa","Wilson","Female","29","Archeologist","13","8420"),
// Employee.fromData(84,"Carlos","Miller","Male","21","Journalist","10","7388"),
// Employee.fromData(85,"Lana","Cooper","Female","20","Mathematician","2","8578"),
// Employee.fromData(86,"George","Craig","Male","30","Archeologist","1","5352"),
// Employee.fromData(87,"Chester","Lloyd","Male","27","Auditor","10","9832"),
// Employee.fromData(88,"Savana","Harrison","Female","20","Fine Artist","8","7871"),
// Employee.fromData(89,"Ted","Casey","Male","27","Engineer","3","2636"),
// Employee.fromData(90,"Richard","Owens","Male","27","Lecturer","11","6607"),
// Employee.fromData(91,"Vincent","Dixon","Male","28","Fashion Designer","8","4338"),
// Employee.fromData(92,"Roland","Payne","Male","18","Florist","1","2956"),
// Employee.fromData(93,"Albert","Grant","Male","19","Baker","9","2285"),
// Employee.fromData(94,"Daniel","Reed","Male","29","Chef","3","2141"),
// Employee.fromData(95,"Dominik","Evans","Male","26","Insurer","6","4518"),
// Employee.fromData(96,"Jared","Mason","Male","24","Archeologist","5","5575"),
// Employee.fromData(97,"Lilianna","Harper","Female","18","Geologist","1","3165"),
// Employee.fromData(98,"Jacob","Parker","Male","30","Chemist","5","1157"),
// Employee.fromData(99,"Kelvin","Wilson","Male","27","Driver","1","3616"),
// Employee.fromData(100,"Gianna","Moore","Female","30","Astronomer","13","1979"),
// Employee.fromData(101,"Cherry","Murray","Female","26","Singer","9","7585"),
// Employee.fromData(102,"Daryl","Wright","Male","18","Lecturer","7","8898"),
// Employee.fromData(103,"Emily","Howard","Female","21","Economist","8","8850"),
// Employee.fromData(104,"John","Adams","Male","24","Graphic Designer","9","1634"),
// Employee.fromData(105,"Emma","Reed","Female","26","Lawer","5","5883"),
// Employee.fromData(106,"Maximilian","Cameron","Male","18","Mathematician","8","9827"),
// Employee.fromData(107,"Cadie","Stevens","Female","25","Scientist","11","1702"),
// Employee.fromData(108,"Honey","Morris","Female","29","Mathematician","12","5246"),
// Employee.fromData(109,"Lucas","Crawford","Male","30","Cook","9","6596"),
// Employee.fromData(110,"Rubie","Rogers","Female","21","Engineer","6","5395"),
// Employee.fromData(111,"Eddy","Crawford","Male","23","Firefighter","2","2635"),
// Employee.fromData(112,"Alexia","Myers","Female","20","Agronomist","2","9534"),
// Employee.fromData(113,"Kelvin","Hill","Male","18","Hairdresser","5","7718"),
// Employee.fromData(114,"Emma","Martin","Female","30","Firefighter","0","5106"),
// Employee.fromData(115,"Naomi","Robinson","Female","18","Producer","6","8588"),
// Employee.fromData(116,"Ned","Moore","Male","26","Producer","10","7238"),
// Employee.fromData(117,"Michael","Dixon","Male","26","Architect","4","5912"),
// Employee.fromData(118,"Reid","Perry","Male","27","Actor","3","4439"),
// Employee.fromData(119,"Vincent","Payne","Male","21","Carpenter","2","689"),
// Employee.fromData(120,"Rosie","Fowler","Female","29","Agronomist","7","6301"),
// Employee.fromData(121,"Victor","Henderson","Male","23","Astronomer","11","8379"),
// Employee.fromData(122,"Naomi","Tucker","Female","26","Police Officer","1","1261"),
// Employee.fromData(123,"Audrey","Foster","Female","25","Salesman","2","6404"),
// Employee.fromData(124,"Alina","Armstrong","Female","22","Photographer","1","6593"),
// Employee.fromData(125,"Owen","Adams","Male","28","Singer","3","3468"),
// Employee.fromData(126,"Dale","Morrison","Male","26","Scientist","11","1049"),
// Employee.fromData(127,"Derek","Crawford","Male","22","Fashion Designer","5","4412"),
// Employee.fromData(128,"Isabella","Carter","Female","30","Dancer","3","6720"),
// Employee.fromData(129,"Mike","Cunningham","Male","22","Florist","5","8631"),
// Employee.fromData(130,"Eric","Parker","Male","23","Actor","4","3761"),
// Employee.fromData(131,"Carl","Stevens","Male","30","Geologist","11","3091"),
// Employee.fromData(132,"Kellan","Grant","Male","28","Architect","5","4206"),
// Employee.fromData(133,"John","Crawford","Male","29","Graphic Designer","14","6003"),
// Employee.fromData(134,"Sophia","Jones","Female","24","Fashion Designer","3","7331"),
// Employee.fromData(135,"Nicole","Evans","Female","20","Driver","1","9325"),
// Employee.fromData(136,"Blake","Allen","Male","24","Medic","10","7866"),
// Employee.fromData(137,"Dexter","Sullivan","Male","25","Economist","2","2782"),
// Employee.fromData(138,"Amanda","Johnston","Female","30","Botanist","1","4774"),
// Employee.fromData(139,"Heather","Ferguson","Female","25","Fashion Designer","6","9089"),
// Employee.fromData(140,"Brooke","Mason","Female","24","Social Worker","11","2822"),
// Employee.fromData(141,"Arianna","Craig","Female","28","Auditor","12","9869"),
// Employee.fromData(142,"Brianna","Cole","Female","19","Pharmacist","6","3864"),
// Employee.fromData(143,"Tony","Russell","Male","24","Singer","7","3342"),
// Employee.fromData(144,"Vanessa","Howard","Female","18","Producer","1","6019"),
// Employee.fromData(145,"Alina","Bennett","Female","27","Composer","4","7002"),
// Employee.fromData(146,"Kellan","Ellis","Male","27","Driver","10","4877"),
// Employee.fromData(147,"Roman","Brown","Male","24","Economist","4","6384"),
// Employee.fromData(148,"Amber","Rogers","Female","27","Baker","3","7434"),
// Employee.fromData(149,"Jessica","Craig","Female","20","Medic","9","2465"),
// Employee.fromData(150,"Eleanor","Smith","Female","18","Veterinarian","3","1167"),
// Employee.fromData(151,"Maya","Holmes","Female","22","Engineer","1","9342"),
// Employee.fromData(152,"Jack","Rogers","Male","21","Interior Designer","2","6366"),
// Employee.fromData(153,"Alexia","Carter","Female","26","Florist","9","2502"),
// Employee.fromData(154,"Oliver","Cameron","Male","30","Pharmacist","11","3655"),
// Employee.fromData(155,"Luke","Phillips","Male","24","Veterinarian","6","6415"),
// Employee.fromData(156,"Lana","Morrison","Female","20","Scientist","2","4253"),
// Employee.fromData(157,"Florrie","Ryan","Female","26","Scientist","9","7217"),
// Employee.fromData(158,"Ashton","Perry","Male","21","Mechanic","4","9720"),
// Employee.fromData(159,"Violet","Tucker","Female","18","Teacher","5","8481"),
// Employee.fromData(160,"Ada","Stewart","Female","21","Electrician","6","2129"),
// Employee.fromData(161,"Frederick","Douglas","Male","21","Interior Designer","9","3427"),
// Employee.fromData(162,"Jacob","Chapman","Male","21","Mathematician","2","5467"),
// Employee.fromData(163,"William","Douglas","Male","29","Astronomer","12","2453"),
// Employee.fromData(164,"Tara","Cunningham","Female","18","Biochemist","8","9391"),
// Employee.fromData(165,"Valeria","Phillips","Female","23","Teacher","3","4608"),
// Employee.fromData(166,"Daisy","Morris","Female","18","Fine Artist","5","6432"),
// Employee.fromData(167,"Joyce","Morrison","Female","23","Meteorologist","2","3227"),
// Employee.fromData(168,"Aiden","Richards","Male","19","Botanist","5","6777"),
// Employee.fromData(169,"Sabrina","Stevens","Female","19","Economist","5","2353"),
// Employee.fromData(170,"James","Richardson","Male","30","Veterinarian","12","8046"),
// Employee.fromData(171,"Stuart","Moore","Male","19","Teacher","0","7178"),
// Employee.fromData(172,"Justin","Kelley","Male","23","Graphic Designer","3","9116"),
// Employee.fromData(173,"Jack","Russell","Male","30","Firefighter","2","7727"),
// Employee.fromData(174,"Lenny","Thompson","Male","19","Cook","2","5851"),
// Employee.fromData(175,"Connie","Andrews","Female","18","Auditor","6","9008"),
// Employee.fromData(176,"Haris","Hill","Male","24","Auditor","8","4699"),
// Employee.fromData(177,"Jordan","Brown","Male","19","Architect","0","6803"),
// Employee.fromData(178,"Miller","Williams","Male","23","Cook","1","2202"),
// Employee.fromData(179,"Ada","Barnes","Female","18","Hairdresser","2","7333"),
// Employee.fromData(180,"Kristian","Carroll","Male","21","Hairdresser","1","5158"),
// Employee.fromData(181,"Evelyn","Williams","Female","18","Veterinarian","2","5845"),
// Employee.fromData(182,"Brooke","Carroll","Female","27","Archeologist","9","8736"),
// Employee.fromData(183,"Madaline","Chapman","Female","26","Singer","8","695"),
// Employee.fromData(184,"Natalie","Murray","Female","23","Archeologist","8","2726"),
// Employee.fromData(185,"John","Gray","Male","30","Agronomist","12","8484"),
// Employee.fromData(186,"Marcus","Tucker","Male","29","Producer","4","4883"),
// Employee.fromData(187,"Alisa","Campbell","Female","22","Graphic Designer","5","5176"),
// Employee.fromData(188,"Roland","Jones","Male","18","Programmer","8","6582"),
// Employee.fromData(189,"Thomas","Ferguson","Male","20","Jeweller","10","8819"),
// Employee.fromData(190,"Tiana","Morrison","Female","29","Programmer","3","866"),
// Employee.fromData(191,"Naomi","Holmes","Female","23","Medic","3","3355"),
// Employee.fromData(192,"Alissa","Andrews","Female","30","Producer","0","9712"),
// Employee.fromData(193,"Olivia","Elliott","Female","28","Pharmacist","10","5902"),
// Employee.fromData(194,"Cadie","Mason","Female","28","Journalist","2","3381"),
// Employee.fromData(195,"Amy","Cameron","Female","18","Electrician","1","1537"),
// Employee.fromData(196,"Sienna","Cooper","Female","29","Composer","0","4481"),
// Employee.fromData(197,"Frederick","Clark","Male","22","Mechanic","4","8644"),
// Employee.fromData(198,"Clark","Ellis","Male","29","Social Worker","5","7252"),
// Employee.fromData(199,"Myra","Reed","Female","24","Physicist","7","6582"),
        ];
  }
}
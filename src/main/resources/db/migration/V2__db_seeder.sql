INSERT INTO academic_years_t (year_label, first_semester_description, second_semester_description)
VALUES
    ('B.C.Sc (First Year)',
     'The first semester establishes fundamental computing principles through intensive programming courses in Python, covering variables, control structures, functions, and basic data structures. Students develop computational thinking via algorithm design and problem-solving exercises. Complementary coursework includes discrete mathematics (logic, sets, relations), digital logic design (gates, circuits), and professional communication skills. Laboratory sessions emphasize practical implementation of programming concepts, debugging techniques, and version control using Git. Introduction to computer organization covers basic CPU architecture and memory hierarchy. Ethical computing principles and academic integrity standards form a crucial component of the curriculum, preparing students for collaborative work in subsequent semesters.',
     'The second semester advances to object-oriented programming paradigms using Java, exploring encapsulation, inheritance, polymorphism, and exception handling. Data structures curriculum examines arrays, linked lists, stacks, queues, and their algorithmic implementations. Mathematics courses progress to differential calculus and linear algebra with computing applications. Students engage in collaborative projects following software development lifecycle principles, including requirements analysis and testing strategies. Additional topics include introductory web technologies (HTML/CSS), database concepts with SQLite, and statistical methods for data analysis. The semester culminates in a showcase project demonstrating integrated application of programming, mathematics, and design principles.'),

    ('B.C.Sc (Second Year)',
     'First semester delves into advanced data structures including trees (binary, AVL, B-trees), graphs (traversal algorithms, shortest path), and hash tables with collision resolution techniques. Algorithm analysis covers time/space complexity (Big-O notation) and sorting/searching algorithms. Database systems instruction includes ER modeling, normalization forms, and complex SQL queries across multiple tables. Web technology fundamentals expand to responsive design with CSS frameworks and interactive JavaScript programming. Mathematics progresses to probability theory and inferential statistics. Laboratory work features implementation of graph algorithms and development of database-driven web applications using RESTful principles.',
     'Second semester explores core systems concepts: operating systems (process scheduling, memory management, file systems) and computer networks (OSI/TCP-IP models, routing protocols, socket programming). Software engineering principles cover design patterns, UML modeling, and agile methodologies. Server-side programming introduces backend development with Node.js/PHP and database integration. Security fundamentals include authentication mechanisms and encryption basics. Students undertake a full-stack application project implementing MVC architecture, covering frontend development, API design, database optimization, and deployment strategies using cloud platforms.'),

    ('B.C.Sc (Third Year)',
     'First semester advances algorithm design with dynamic programming, greedy algorithms, and NP-completeness theory. Compiler construction covers lexical analysis, parsing techniques, and code generation. Artificial intelligence curriculum includes heuristic search, knowledge representation, and machine learning fundamentals (regression, classification). Cybersecurity modules address cryptographic systems (symmetric/asymmetric encryption) and network defense mechanisms. Parallel computing introduces multithreading and GPU programming. Practical work involves implementing pathfinding algorithms, building simple compilers, and developing neural networks for pattern recognition using TensorFlow/PyTorch.',
     'Second semester focuses on specialized domains: cloud computing (virtualization, containerization with Docker/Kubernetes), mobile application development (Android/iOS frameworks), and distributed systems (consensus algorithms, fault tolerance). Advanced electives offer choices between natural language processing (tokenization, sentiment analysis), computer vision (object detection, CNN architectures), or blockchain technologies (smart contracts, decentralized applications). Students participate in a capstone-preparation project using CI/CD pipelines, implementing automated testing, and container orchestration. Professional development includes technical writing and research paper analysis.'),

    ('B.C.Sc (Fourth Year)',
     'First semester emphasizes enterprise-scale software architecture including microservices, serverless computing, and event-driven design. DevOps practices cover infrastructure-as-code (Terraform), configuration management, and monitoring systems. Data science curriculum advances to ensemble methods, deep learning architectures, and big data processing with Spark/Hadoop ecosystems. Ethics modules address algorithmic bias, privacy regulations (GDPR), and professional responsibility. Project management instruction includes Scrum, Kanban, and risk assessment frameworks. Students design scalable systems using cloud providers (AWS/Azure) and implement machine learning pipelines for real-world datasets.',
     'Second semester centers on industrial engagement through capstone projects solving authentic problems with industry partners or research labs. Full-time internships provide professional experience in software development roles. Research methodology courses prepare for postgraduate studies with experimental design and statistical analysis techniques. Specialized workshops explore emerging domains: quantum computing algorithms, IoT security challenges, or AR/VR development. Students present project outcomes at a departmental symposium, demonstrating technical mastery, project management skills, and professional communication abilities.'),

    ('B.C.Sc (Fifth Year)',
     'First semester offers advanced specialization tracks: AI/ML (reinforcement learning, generative models), cybersecurity (penetration testing, digital forensics), or cloud architecture (distributed databases, serverless patterns). Students conduct comprehensive literature reviews in their domain and develop thesis proposals under faculty supervision. Advanced seminars explore current research trends and scholarly debate. Cross-disciplinary options include bioinformatics, computational finance, or human-computer interaction. Professional certification preparation (AWS Solutions Architect, CEH, etc.) is integrated with technical coursework.',
     'Second semester is dedicated to thesis implementation and defense. Students execute original research or development projects, collecting/analyzing data, and validating results. Activities include journal manuscript preparation, conference presentations, and open-source contributions. Entrepreneurship modules guide technology commercialization for startup ventures. Career development focuses on academic positions (for research-track students) or industry leadership roles. The program culminates in a public defense demonstrating scholarly contribution and technical innovation.'),

    ('M.C.Sc',
     'First semester establishes graduate-level foundations with advanced algorithms (randomized, approximation), research methodology, and domain specialization (AI, systems, theory). Students conduct critical literature analysis to identify research gaps and formulate original questions. Statistical methods cover experimental design and multivariate analysis. Technical writing instruction focuses on grant proposals and scholarly papers. Seminar series feature faculty research and industry innovations. Teaching practicum develops pedagogical skills through supervised laboratory instruction and curriculum development assistance.',
     'Second semester deepens thesis research with regular progress reviews by advisory committees. Specialized coursework includes reading groups on recent publications and advanced topics seminars. Students initiate experimental work, develop prototypes, and establish collaborative research networks. Conference paper submission and peer review participation are required components. Professional development includes academic job market preparation (CV writing, interview techniques) and research ethics certification. Students begin drafting thesis chapters while refining methodology through iterative experimentation and validation.'),

    ('Ph.D',
     'First semester focuses on comprehensive examination preparation through directed reading lists and research proposal refinement. Advanced seminars explore cutting-edge developments and interdisciplinary connections. Students develop novel theoretical frameworks, design validation methodologies, and establish experimental infrastructure. Active conference participation includes presenting preliminary findings and networking with research communities. Grant writing skills are honed through fellowship applications. Teaching responsibilities progress to course design and independent instruction under mentorship.',
     'Second semester involves intensive dissertation research with emphasis on generating original contributions to knowledge. Students lead research teams, supervise junior researchers, and manage collaborative projects. Activities include journal manuscript submission, patent applications for novel inventions, and international research visits. Dissertation writing integrates findings into coherent theoretical frameworks, with regular committee feedback. Career preparation includes academic job interviews, industry research position networking, and entrepreneurial venture planning. The program culminates in a public defense demonstrating significant scholarly impact and research maturity.');

-- Admin user (password: 12345)
INSERT INTO users_t (email, password, role, created_date, created_by)
VALUES (
           'admin@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',  -- BCrypt hash
           'ADMIN',
           NOW(),
           'system'
       );

-- Insert users for lecturers
INSERT INTO users_t (email, password, role, created_date, created_by)
VALUES
    ('johndoe@university.edu', '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW', 'LECTURER', NOW(), 'admin@university.edu'),
    ('sarahsmith@university.edu', '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW', 'LECTURER', NOW(), 'admin@university.edu'),
    ('robertjohnson@university.edu', '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW', 'LECTURER', NOW(), 'admin@university.edu'),
    ('emilywilson@university.edu', '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW', 'LECTURER', NOW(), 'admin@university.edu'),
    ('michaelchen@university.edu', '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW', 'LECTURER', NOW(), 'admin')
;

-- Insert lecturers with user references
INSERT INTO lecturers_t (first_name, last_name, image_url, date_of_birth, gender, academic_title, first_join_date, active, user_id)
VALUES
    ('John', 'Doe', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748495288/file.jpg', '1980-05-15', 'MALE', 'Professor', '2010-09-01', 1,
     (SELECT id FROM users_t WHERE email = 'johndoe@university.edu')),

    ('Sarah', 'Smith', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748495315/file.jpg', '1985-08-22', 'FEMALE', 'Associate Professor', '2015-03-15', 1,
     (SELECT id FROM users_t WHERE email = 'sarahsmith@university.edu')),

    ('Robert', 'Johnson', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748495363/file.jpg', '1975-11-30', 'MALE', 'Senior Lecturer', '2008-07-01', 1,
     (SELECT id FROM users_t WHERE email = 'robertjohnson@university.edu')),

    ('Emily', 'Wilson', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748495380/file.jpg', '1990-02-14', 'FEMALE', 'Assistant Professor', '2018-11-20', 1,
     (SELECT id FROM users_t WHERE email = 'emilywilson@university.edu')),

    ('Michael', 'Chen', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748495406/file.jpg', '1995-08-24', 'FEMALE', 'Assistant Professor', '2019-01-13', 1,
     (SELECT id FROM users_t WHERE email = 'michaelchen@university.edu'))

;

-- First Year Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC101',
           'Programming Fundamentals',
           'prog_fund.jpg',
           'Introduction to programming concepts using Python, covering variables, control structures, functions, and basic data structures. Develops computational thinking and problem-solving techniques.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'FIRST_SEMESTER',
           5
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC102',
           'Discrete Mathematics',
           'discrete_math.jpg',
           'Fundamentals of logic, sets, relations, and combinatorics. Applications in computer science including algorithm analysis and cryptography foundations.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'FIRST_SEMESTER',
           5
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC103',
           'Object-Oriented Programming',
           'oop_java.jpg',
           'Advanced Java programming covering classes, inheritance, polymorphism, exception handling, and GUI development. Introduction to design patterns.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'SECOND_SEMESTER',
           5
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC104',
           'Data Structures',
           'data_structures.jpg',
           'Implementation and analysis of arrays, linked lists, stacks, queues, trees, and hash tables. Algorithm complexity analysis (Big-O notation).',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'SECOND_SEMESTER',
           5
       );

-- Second Year Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC201',
           'Database Systems',
           'database_sys.jpg',
           'ER modeling, normalization, SQL programming, and transaction management. Practical experience with MySQL and database design principles.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'FIRST_SEMESTER',
           4
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC202',
           'Web Technologies',
           'web_tech.jpg',
           'HTML5, CSS3, JavaScript, and responsive design. Introduction to frontend frameworks and accessibility standards.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'FIRST_SEMESTER',
           4
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC203',
           'Operating Systems',
           'os_concepts.jpg',
           'Process scheduling, memory management, file systems, and concurrency. Practical exercises with Linux kernel modules.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'SECOND_SEMESTER',
           4
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC204',
           'Computer Networks',
           'computer_networks.jpg',
           'OSI/TCP-IP models, routing protocols, socket programming, and network security fundamentals.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'SECOND_SEMESTER',
           4
       );

-- Third Year Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC301',
           'Artificial Intelligence',
           'ai_fundamentals.jpg',
           'Heuristic search, knowledge representation, machine learning fundamentals, and natural language processing basics.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'FIRST_SEMESTER',
           3
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC302',
           'Compiler Design',
           'compiler_design.jpg',
           'Lexical analysis, parsing techniques, syntax-directed translation, and code optimization.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'FIRST_SEMESTER',
           3
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC303',
           'Cloud Computing',
           'cloud_computing.jpg',
           'Virtualization, containerization (Docker/Kubernetes), serverless architecture, and cloud deployment models.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'SECOND_SEMESTER',
           3
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC304',
           'Mobile App Development',
           'mobile_dev.jpg',
           'Android/iOS application development, cross-platform frameworks, and mobile UI/UX design principles.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'SECOND_SEMESTER',
           3
       );

-- Fourth Year Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC401',
           'Machine Learning',
           'machine_learning.jpg',
           'Supervised/unsupervised learning, neural networks, model evaluation, and practical implementation with TensorFlow/PyTorch.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'FIRST_SEMESTER',
           2
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC402',
           'Software Architecture',
           'software_arch.jpg',
           'Microservices, event-driven systems, domain-driven design, and architecture patterns.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'FIRST_SEMESTER',
           2
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC403',
           'Big Data Technologies',
           'big_data.jpg',
           'Hadoop ecosystem, Spark processing, NoSQL databases, and distributed computing paradigms.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'SECOND_SEMESTER',
           2
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC404',
           'Cybersecurity',
           'cybersecurity.jpg',
           'Cryptographic systems, ethical hacking, digital forensics, and security protocol analysis.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'SECOND_SEMESTER',
           2
       );

-- Fifth Year Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC501',
           'Advanced Algorithms',
           'advanced_algo.jpg',
           'Randomized algorithms, approximation methods, parallel algorithms, and computational complexity theory.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC502',
           'Deep Learning',
           'deep_learning.jpg',
           'CNN, RNN, GAN architectures, reinforcement learning, and transfer learning techniques.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC503',
           'Quantum Computing',
           'quantum_comp.jpg',
           'Qubits, quantum gates, quantum algorithms (Shor, Grover), and quantum error correction.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'SECOND_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC504',
           'Research Methodology',
           'research_methods.jpg',
           'Experimental design, statistical analysis, literature review techniques, and academic publishing.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'SECOND_SEMESTER',
           1
       );

-- Master's Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC601',
           'Advanced Research Methods',
           'research_methods.jpg',
           'Research design, qualitative/quantitative methods, data collection techniques, and ethical considerations.',
           (SELECT id FROM academic_years_t WHERE year_label = 'M.C.Sc'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC602',
           'Distributed Systems',
           'distributed_sys.jpg',
           'Consensus algorithms, fault tolerance, distributed transactions, and scalable system design.',
           (SELECT id FROM academic_years_t WHERE year_label = 'M.C.Sc'),
           'SECOND_SEMESTER',
           2
       );

-- PhD Courses
INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC801',
           'Advanced Topics in Computing',
           'phd_seminar.jpg',
           'Cutting-edge research areas, interdisciplinary approaches, and emerging computing paradigms.',
           (SELECT id FROM academic_years_t WHERE year_label = 'Ph.D'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC802',
           'Dissertation Research',
           'dissertation.jpg',
           'Original research development, scholarly publication strategies, and research impact measurement.',
           (SELECT id FROM academic_years_t WHERE year_label = 'Ph.D'),
           'SECOND_SEMESTER',
           2
       );


INSERT INTO course_reference_links (course_id, reference_links)
SELECT c.id, l.link
FROM courses_t c
         JOIN (
    -- CSC101: Programming Fundamentals
    SELECT 'CSC101' AS course_code, 'https://www.coursera.org/specializations/python' AS link
    UNION SELECT 'CSC101', 'https://cs50.harvard.edu/x/2023/'
    UNION SELECT 'CSC101', 'https://www.codecademy.com/learn/learn-python-3'
    UNION SELECT 'CSC101', 'https://developers.google.com/edu/python'
    UNION SELECT 'CSC101', 'https://www.freecodecamp.org/learn/scientific-computing-with-python/'

    -- CSC102: Discrete Mathematics
    UNION SELECT 'CSC102', 'https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-spring-2015/'
    UNION SELECT 'CSC102', 'https://www.coursera.org/specializations/discrete-mathematics'
    UNION SELECT 'CSC102', 'https://brilliant.org/courses/discrete-math/'
    UNION SELECT 'CSC102', 'https://youtube.com/playlist?list=PLDDGPdw7e6Ag1EIznZ-m-qXu4XX3A0cIz'
    UNION SELECT 'CSC102', 'https://discretemath.org/'

    -- CSC103: Object-Oriented Programming
    UNION SELECT 'CSC103', 'https://java-programming.mooc.fi/'
    UNION SELECT 'CSC103', 'https://www.coursera.org/learn/object-oriented-java'
    UNION SELECT 'CSC103', 'https://refactoring.guru/design-patterns'
    UNION SELECT 'CSC103', 'https://www.codecademy.com/learn/learn-java'
    UNION SELECT 'CSC103', 'https://youtu.be/8cm1x4bC610'

    -- CSC104: Data Structures
    UNION SELECT 'CSC104', 'https://visualgo.net/en'
    UNION SELECT 'CSC104', 'https://www.coursera.org/specializations/data-structures-algorithms'
    UNION SELECT 'CSC104', 'https://techdevguide.withgoogle.com/paths/data-structures-and-algorithms/'
    UNION SELECT 'CSC104', 'https://www.freecodecamp.org/news/learn-data-structures-and-algorithms/'
    UNION SELECT 'CSC104', 'https://leetcode.com/explore/learn/cards/data-structure/'

    -- CSC201: Database Systems
    UNION SELECT 'CSC201', 'https://www.coursera.org/learn/database-management'
    UNION SELECT 'CSC201', 'https://www.edx.org/course/introduction-to-databases'
    UNION SELECT 'CSC201', 'https://lagunita.stanford.edu/courses/DB/2014/SelfPaced/about'
    UNION SELECT 'CSC201', 'https://www.w3schools.com/sql/'
    UNION SELECT 'CSC201', 'https://www.postgresqltutorial.com/'

    -- CSC202: Web Technologies
    UNION SELECT 'CSC202', 'https://www.theodinproject.com/paths/foundations/courses/foundations'
    UNION SELECT 'CSC202', 'https://frontendmasters.com/learn/beginner/'
    UNION SELECT 'CSC202', 'https://web.dev/learn/'
    UNION SELECT 'CSC202', 'https://developer.mozilla.org/en-US/docs/Learn'
    UNION SELECT 'CSC202', 'https://www.freecodecamp.org/learn/responsive-web-design/'

    -- CSC203: Operating Systems
    UNION SELECT 'CSC203', 'https://www.ops-class.org/'
    UNION SELECT 'CSC203', 'https://www.coursera.org/learn/os-pku'
    UNION SELECT 'CSC203', 'https://pages.cs.wisc.edu/~remzi/OSTEP/'
    UNION SELECT 'CSC203', 'https://www.cs.uic.edu/~jbell/CourseNotes/OperatingSystems/'
    UNION SELECT 'CSC203', 'https://www.udacity.com/course/introduction-to-operating-systems--ud923'

    -- CSC204: Computer Networks
    UNION SELECT 'CSC204', 'https://www.coursera.org/learn/computer-networking'
    UNION SELECT 'CSC204', 'https://gaia.cs.umass.edu/kurose_ross/'
    UNION SELECT 'CSC204', 'https://www.cs.dartmouth.edu/~sergey/cs60/'
    UNION SELECT 'CSC204', 'https://www.ietf.org/rfc.html'
    UNION SELECT 'CSC204', 'https://www.cloudflare.com/learning/'

    -- CSC301: Artificial Intelligence
    UNION SELECT 'CSC301', 'https://www.coursera.org/learn/ai-for-everyone'
    UNION SELECT 'CSC301', 'https://ocw.mit.edu/courses/6-034-artificial-intelligence-fall-2010/'
    UNION SELECT 'CSC301', 'https://www.udacity.com/course/intro-to-artificial-intelligence--cs271'
    UNION SELECT 'CSC301', 'https://www.elementsofai.com/'
    UNION SELECT 'CSC301', 'https://developers.google.com/machine-learning/crash-course'

    -- CSC302: Compiler Design
    UNION SELECT 'CSC302', 'https://www.coursera.org/learn/compilers'
    UNION SELECT 'CSC302', 'https://web.stanford.edu/class/cs143/'
    UNION SELECT 'CSC302', 'https://craftinginterpreters.com/'
    UNION SELECT 'CSC302', 'https://llvm.org/docs/tutorial/'
    UNION SELECT 'CSC302', 'https://www.nand2tetris.org/'

    -- CSC303: Cloud Computing
    UNION SELECT 'CSC303', 'https://www.coursera.org/specializations/cloud-computing'
    UNION SELECT 'CSC303', 'https://cloud.google.com/training'
    UNION SELECT 'CSC303', 'https://aws.amazon.com/training/'
    UNION SELECT 'CSC303', 'https://learn.microsoft.com/en-us/training/azure/'
    UNION SELECT 'CSC303', 'https://www.edx.org/professional-certificate/ibm-cloud-computing'

    -- CSC304: Mobile App Development
    UNION SELECT 'CSC304', 'https://developer.android.com/courses'
    UNION SELECT 'CSC304', 'https://www.udacity.com/course/android-developer-nanodegree-by-google--nd801'
    UNION SELECT 'CSC304', 'https://www.coursera.org/specializations/android-app-development'
    UNION SELECT 'CSC304', 'https://flutter.dev/learn'
    UNION SELECT 'CSC304', 'https://reactnative.dev/docs/getting-started'

    -- CSC401: Machine Learning
    UNION SELECT 'CSC401', 'https://www.coursera.org/learn/machine-learning'
    UNION SELECT 'CSC401', 'https://www.fast.ai/'
    UNION SELECT 'CSC401', 'https://developers.google.com/machine-learning/crash-course'
    UNION SELECT 'CSC401', 'https://www.kaggle.com/learn'
    UNION SELECT 'CSC401', 'https://course.fast.ai/'

    -- CSC402: Software Architecture
    UNION SELECT 'CSC402', 'https://www.coursera.org/specializations/software-design-architecture'
    UNION SELECT 'CSC402', 'https://www.udacity.com/course/software-architecture-design--ud821'
    UNION SELECT 'CSC402', 'https://martinfowler.com/architecture/'
    UNION SELECT 'CSC402', 'https://aws.amazon.com/architecture/well-architected/'
    UNION SELECT 'CSC402', 'https://azure.microsoft.com/en-us/solutions/architecture/'

    -- CSC403: Big Data Technologies
    UNION SELECT 'CSC403', 'https://www.coursera.org/specializations/big-data'
    UNION SELECT 'CSC403', 'https://www.edx.org/professional-certificate/hadoop-big-data-developer'
    UNION SELECT 'CSC403', 'https://spark.apache.org/docs/latest/'
    UNION SELECT 'CSC403', 'https://www.udacity.com/course/data-engineer-nanodegree--nd027'
    UNION SELECT 'CSC403', 'https://aws.amazon.com/training/learn-about/big-data/'

    -- CSC404: Cybersecurity
    UNION SELECT 'CSC404', 'https://www.coursera.org/specializations/intro-cyber-security'
    UNION SELECT 'CSC404', 'https://www.sans.org/cyber-security-courses/'
    UNION SELECT 'CSC404', 'https://tryhackme.com/'
    UNION SELECT 'CSC404', 'https://www.hackthebox.com/'
    UNION SELECT 'CSC404', 'https://owasp.org/www-project-web-security-testing-guide/'

    -- CSC501: Advanced Algorithms
    UNION SELECT 'CSC501', 'https://www.coursera.org/specializations/algorithms'
    UNION SELECT 'CSC501', 'https://ocw.mit.edu/courses/6-854j-advanced-algorithms-fall-2008/'
    UNION SELECT 'CSC501', 'https://www.algorithmsilluminated.org/'
    UNION SELECT 'CSC501', 'https://jeffe.cs.illinois.edu/teaching/algorithms/'
    UNION SELECT 'CSC501', 'https://cp-algorithms.com/'

    -- CSC502: Deep Learning
    UNION SELECT 'CSC502', 'https://www.coursera.org/specializations/deep-learning'
    UNION SELECT 'CSC502', 'https://course.fast.ai/'
    UNION SELECT 'CSC502', 'https://cs231n.stanford.edu/'
    UNION SELECT 'CSC502', 'https://www.deeplearning.ai/'
    UNION SELECT 'CSC502', 'https://pytorch.org/tutorials/'

    -- CSC503: Quantum Computing
    UNION SELECT 'CSC503', 'https://www.coursera.org/learn/quantum-computing-algorithms'
    UNION SELECT 'CSC503', 'https://qiskit.org/learn/'
    UNION SELECT 'CSC503', 'https://quantum-computing.ibm.com/lab/docs/iql/'
    UNION SELECT 'CSC503', 'https://www.edx.org/course/quantum-computing-for-everyone'
    UNION SELECT 'CSC503', 'https://quantum.country/qcvc'

    -- CSC504: Research Methodology
    UNION SELECT 'CSC504', 'https://www.coursera.org/learn/research-methods'
    UNION SELECT 'CSC504', 'https://www.edx.org/course/research-methods'
    UNION SELECT 'CSC504', 'https://www.science.org/doi/10.1126/science.1093857'
    UNION SELECT 'CSC504', 'https://www.nature.com/articles/d41586-020-00047-y'
    UNION SELECT 'CSC504', 'https://plos.org/resource/10-steps-writing-research-paper/'

    -- CSC601: Advanced Research Methods
    UNION SELECT 'CSC601', 'https://www.coursera.org/learn/research-methodology'
    UNION SELECT 'CSC601', 'https://www.edx.org/course/advanced-research-methods'
    UNION SELECT 'CSC601', 'https://www.sagepub.com/sites/default/files/upm-binaries/61667_Chapter_1.pdf'
    UNION SELECT 'CSC601', 'https://libguides.usc.edu/writingguide/researchdesigns'
    UNION SELECT 'CSC601', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4601897/'

    -- CSC602: Distributed Systems
    UNION SELECT 'CSC602', 'https://www.coursera.org/learn/cloud-computing'
    UNION SELECT 'CSC602', 'https://pdos.csail.mit.edu/6.824/'
    UNION SELECT 'CSC602', 'https://www.distributed-systems.net/index.php/books/'
    UNION SELECT 'CSC602', 'https://raft.github.io/'
    UNION SELECT 'CSC602', 'https://etcd.io/docs/'

    -- CSC801: Advanced Topics in Computing
    UNION SELECT 'CSC801', 'https://www.coursera.org/specializations/advanced-computing'
    UNION SELECT 'CSC801', 'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/'
    UNION SELECT 'CSC801', 'https://arxiv.org/'
    UNION SELECT 'CSC801', 'https://dl.acm.org/'
    UNION SELECT 'CSC801', 'https://www.computer.org/'

    -- CSC802: Dissertation Research
    UNION SELECT 'CSC802', 'https://www.elsevier.com/connect/a-guide-to-writing-a-phd-thesis'
    UNION SELECT 'CSC802', 'https://www.nature.com/articles/d41586-018-02479-z'
    UNION SELECT 'CSC802', 'https://researcher.life/'
    UNION SELECT 'CSC802', 'https://www.zotero.org/'
    UNION SELECT 'CSC802', 'https://www.mendelay.com/'
) AS l ON c.course_code = l.course_code;
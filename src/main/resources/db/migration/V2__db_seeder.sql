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
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'admin@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',  -- BCrypt hash
           'ADMIN',
           NOW(),
           'system'
       );

-- Insert users for lecturers
INSERT INTO users_t (email, password, role, created_at, created_by)
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
    ('John', 'Doe', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748616496/file.jpg', '1980-05-15', 'MALE', 'Professor', '2010-09-01', 1,
     (SELECT id FROM users_t WHERE email = 'johndoe@university.edu')),

    ('Sarah', 'Smith', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748616246/file.jpg', '1985-08-22', 'FEMALE', 'Associate Professor', '2015-03-15', 1,
     (SELECT id FROM users_t WHERE email = 'sarahsmith@university.edu')),

    ('Robert', 'Johnson', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748616419/file.jpg', '1975-11-30', 'MALE', 'Senior Lecturer', '2008-07-01', 1,
     (SELECT id FROM users_t WHERE email = 'robertjohnson@university.edu')),

    ('Emily', 'Wilson', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748616208/file.jpg', '1990-02-14', 'FEMALE', 'Assistant Professor', '2018-11-20', 1,
     (SELECT id FROM users_t WHERE email = 'emilywilson@university.edu')),

    ('Michael', 'Chen', 'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748616150/file.jpg', '1995-08-24', 'FEMALE', 'Assistant Professor', '2019-01-13', 1,
     (SELECT id FROM users_t WHERE email = 'michaelchen@university.edu'))

;

-- First Year Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC101',
           'Programming Fundamentals',
           'https://i.ytimg.com/vi/ykSsccKKNh4/maxresdefault.jpg',
           'Programming is a fundamental skill in the modern digital world, forming the backbone of software development, data science, artificial intelligence, and countless other disciplines. An introductory course in programming serves as the foundation upon which more advanced computational knowledge is built. Python, known for its simplicity and readability, has emerged as one of the most popular and beginner-friendly programming languages. This course introduces core programming concepts using Python, providing students with essential skills in logic, syntax, problem-solving, and computational thinking.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'FIRST_SEMESTER',
           5
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC102',
           'Discrete Mathematics',
           'https://public-files.gumroad.com/mhagmz0oxs67saht0znt6bp7ugti',
           'Discrete mathematics forms the foundational framework for computer science, encompassing propositional and predicate logic for formal reasoning and proof techniques, set theory for understanding collections and operations on data, relations and functions for modeling connections and mappings between elements, and combinatorics for analyzing counting problems and discrete structures. These concepts are directly applied in algorithm design and analysis to evaluate efficiency and correctness, in cryptography to develop secure encryption schemes, in database systems to manage and query structured information, and in software engineering to verify program behavior, while graph theory provides essential tools for modeling networks, optimizing routes, and representing hierarchical data structures across various computing domains.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'FIRST_SEMESTER',
           5
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC103',
           'Object-Oriented Programming',
           'https://phoenixnap.com/glossary/wp-content/uploads/2022/12/object-oriented-programming-explained.jpg',
           'This course explores advanced Java concepts, including object-oriented programming principles such as classes, inheritance, and polymorphism, along with robust exception handling for error management. It also covers GUI development using frameworks like Swing or JavaFX to build interactive applications. Additionally, the course introduces fundamental design patterns—such as Singleton, Factory, and Observer—to teach best practices in software architecture, promoting reusable, maintainable, and scalable code for real-world applications.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'SECOND_SEMESTER',
           5
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC104',
           'Data Structures',
           'https://miro.medium.com/v2/resize:fit:1400/1*J38nYZU7gzu-4lQmtjlSUw.jpeg',
           '**Data Structures and Algorithms**

This course covers the implementation and analysis of fundamental data structures, including arrays, linked lists, stacks, queues, trees, and hash tables, emphasizing their strengths, trade-offs, and real-world applications. Students will learn to evaluate algorithmic efficiency through complexity analysis using Big-O notation, enabling them to select optimal data structures and algorithms for performance-critical problems. Practical programming assignments reinforce theoretical concepts, building proficiency in designing and optimizing solutions for common computational challenges.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (First Year)'),
           'SECOND_SEMESTER',
           5
       );

-- Second Year Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC201',
           'Database Systems',
           'https://miro.medium.com/v2/resize:fit:1400/1*szBsfY6lp8A0jb1zOvJ0mw.jpeg',
           'This course provides a comprehensive study of database design and management, covering Entity-Relationship (ER) modeling for conceptual design and normalization techniques (1NF to 3NF/BCNF) to eliminate redundancies. Students will gain hands-on SQL programming skills for querying, updating, and managing relational databases, along with transaction management (ACID properties, concurrency control). Practical labs using MySQL reinforce database design principles, schema implementation, and performance optimization, preparing students to develop efficient, scalable database solutions for real-world applications.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'FIRST_SEMESTER',
           4
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC202',
           'Web Technologies',
           'https://miro.medium.com/v2/resize:fit:1400/1*szBsfY6lp8A0jb1zOvJ0mw.jpeg',
           'This course provides a comprehensive introduction to modern frontend development, covering core technologies including HTML5 for content structure, CSS3 for styling and layout, and JavaScript for interactive functionality. Students will learn responsive design principles using Flexbox and Grid to create adaptable interfaces for all devices, while exploring accessibility standards (WCAG) to ensure inclusive web experiences. The curriculum also introduces popular frontend frameworks like React or Vue.js, equipping learners with industry-relevant skills to build dynamic, user-friendly web applications. Hands-on projects reinforce theoretical concepts through practical implementation of complete, standards-compliant websites.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'FIRST_SEMESTER',
           4
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC203',
           'Operating Systems',
           'https://artoftesting.com/wp-content/uploads/2022/02/operating-system.png',
           'This course explores core OS concepts including process scheduling algorithms (FCFS, Round Robin, Priority), memory management techniques (paging, segmentation, virtual memory), and file system architectures (FAT, ext, NTFS). Students will examine concurrency mechanisms such as semaphores, mutexes, and deadlock prevention strategies. The course includes hands-on Linux kernel module development, providing practical experience with system calls, process synchronization, and device drivers. Through C programming assignments and kernel hacking exercises, learners gain insight into modern OS design principles and performance tradeoffs.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'SECOND_SEMESTER',
           4
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC204',
           'Computer Networks',
           'https://cdn.sanity.io/images/4hlaqclp/production/bd843511e8f7e2475b57c908a5b68e763e5f9de1-626x626.jpg',
           'This course provides a comprehensive study of modern networking, beginning with the OSI and TCP/IP reference models to understand layered communication architectures. Students will explore routing protocols (RIP, OSPF, BGP) and switching concepts, along with practical socket programming in Python/C to implement client-server applications. The curriculum covers network security fundamentals including firewalls, encryption (SSL/TLS), and common vulnerabilities (DDoS, MITM attacks). Hands-on labs using network simulation tools (Wireshark, GNS3) reinforce theoretical concepts, enabling students to design, analyze, and secure enterprise-grade networks.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Second Year)'),
           'SECOND_SEMESTER',
           4
       );

-- Third Year Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC301',
           'Artificial Intelligence',
           'https://media.geeksforgeeks.org/wp-content/uploads/20240319155102/what-is-ai-artificial-intelligence.webp',
           'This course explores core AI methodologies, including heuristic search algorithms (A*, greedy best-first) for optimization problems and knowledge representation techniques (logic, semantic networks) for structured reasoning. Students will examine machine learning fundamentals covering supervised/unsupervised learning, neural networks, and evaluation metrics. The curriculum introduces natural language processing (NLP) basics such as tokenization, sentiment analysis, and word embeddings (Word2Vec). Through Python-based projects using libraries like scikit-learn and NLTK, learners gain hands-on experience implementing intelligent systems while analyzing their ethical implications and real-world applications.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'FIRST_SEMESTER',
           3
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC302',
           'Compiler Design',
           'https://lastmomenttuitions.com/wp-content/uploads/2021/03/Compiler-design-1-1.jpg',
           'This course provides a comprehensive study of compiler architecture, beginning with lexical analysis using finite automata and regular expressions for token generation. Students will explore parsing techniques including top-down (LL) and bottom-up (LR) approaches, along with syntax-directed translation for semantic analysis and intermediate code generation. The curriculum covers optimization methods at both local (peephole) and global (data-flow) levels, with emphasis on target code generation for modern architectures. Through hands-on projects building compiler components using tools like Flex/Bison or ANTLR, students gain practical experience in transforming high-level code to efficient machine representations while analyzing performance tradeoffs.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'FIRST_SEMESTER',
           3
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC303',
           'Cloud Computing',
           'https://platinumdatarecovery.com/wp-content/uploads/2023/05/cloud-computing-diagram.webp',
           'This course examines contemporary infrastructure paradigms, beginning with virtualization technologies (hypervisors, VM orchestration) and progressing to containerization using Docker for lightweight process isolation and Kubernetes for scalable container management. Students will explore serverless architecture (FaaS) and its event-driven execution model, along with major cloud deployment models (IaaS, PaaS, SaaS) across providers like AWS/Azure/GCP. Hands-on labs cover CI/CD pipelines, infrastructure-as-code (Terraform), and cloud-native design patterns, equipping learners to deploy scalable, resilient distributed systems while optimizing cost and performance in multi-cloud environments.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'SECOND_SEMESTER',
           3
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC304',
           'Mobile App Development',
           'https://www.mindinventory.com/blog/wp-content/uploads/2022/10/app-category-trends.jpeg',
           'This course provides a comprehensive introduction to building modern mobile applications, covering native development for Android (Kotlin/Java) and iOS (Swift), as well as cross-platform frameworks like Flutter and React Native for efficient code reuse. Students will learn core mobile UI/UX design principles, including responsive layouts, Material Design (Android), and Human Interface Guidelines (iOS). The curriculum includes hands-on projects in API integration, state management, and performance optimization, along with best practices for app publishing on Google Play and the App Store. By the end, learners will be able to design, develop, and deploy polished mobile applications for diverse use cases.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Third Year)'),
           'SECOND_SEMESTER',
           3
       );

-- Fourth Year Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC401',
           'Machine Learning',
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO1ptSsKs2vpgQ4PdT6dHPdQCL85jI6J-_DI8Xh-m0xF5HptIFBjWdiBC1L3uzUPZgysc&usqp=CAU',
           'This course covers core concepts in machine learning, including supervised learning (regression, classification) and unsupervised learning (clustering, dimensionality reduction), along with neural networks and deep learning architectures (CNNs, RNNs). Students will learn model evaluation techniques (cross-validation, metrics like precision/recall) and gain hands-on experience implementing algorithms using TensorFlow and PyTorch, enabling them to build, train, and deploy practical ML models for real-world applications.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'FIRST_SEMESTER',
           2
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC402',
           'Software Architecture',
           'https://cdn.moontechnolabs.com/live/blog/wp-content/uploads/2023/11/21232523/Software-Architecture-Patterns.jpg',
           'This course explores advanced architectural paradigms, including microservices for modular, scalable systems and event-driven design for asynchronous communication using message brokers (Kafka, RabbitMQ). Students will learn domain-driven design (DDD) principles to model complex business logic, alongside patterns like CQRS, Saga, and API Gateway for distributed systems. Through case studies and cloud-native labs (AWS/Azure), participants gain hands-on experience designing resilient, maintainable architectures that balance performance, scalability, and organizational alignment.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'FIRST_SEMESTER',
           2
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC403',
           'Big Data Technologies',
           'https://www.smartsight.in/wp-content/uploads/2021/07/Big-Data-01-1200x628.jpg',
           'This course provides an in-depth exploration of modern large-scale data processing, covering the Hadoop ecosystem (HDFS, MapReduce, YARN) for batch processing and Apache Spark for in-memory analytics (RDDs, DataFrames). Students will work with NoSQL databases (MongoDB, Cassandra) to understand schema flexibility and scalability, while studying distributed computing paradigms (CAP theorem, consensus algorithms). Hands-on labs using cloud platforms (AWS EMR, GCP Dataproc) teach pipeline design for real-world data engineering challenges, emphasizing fault tolerance and optimization in petabyte-scale environments.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'SECOND_SEMESTER',
           2
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC404',
           'Cybersecurity',
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ73vjoG3FqEJ0kZtOFbtvLA5bCCXldr09DUQ&s',
           'This course provides a comprehensive study of modern security practices, covering cryptographic systems (symmetric/asymmetric encryption, PKI, hashing) and ethical hacking techniques (penetration testing, vulnerability assessment). Students will learn digital forensics methodologies (evidence acquisition, memory analysis) and security protocol analysis (TLS, IPSec) to evaluate system robustness. Hands-on labs using tools like Metasploit, Wireshark, and Autopsy simulate real-world attack/defense scenarios, equipping learners with skills to secure networks while adhering to legal and ethical frameworks.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fourth Year)'),
           'SECOND_SEMESTER',
           2
       );

-- Fifth Year Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC501',
           'Advanced Algorithms',
           'https://imagedelivery.net/CLfkmk9Wzy8_9HRyug4EVA/dd1abac9-220d-4c4d-a8c5-d755e2606800/public',
           'This course examines modern algorithm design techniques, including randomized algorithms (Las Vegas, Monte Carlo) for probabilistic efficiency and approximation methods (LP rounding, greedy heuristics) for NP-hard problems. Students will explore parallel algorithms (MapReduce, PRAM models) for multi-core and distributed systems, alongside computational complexity theory (P vs. NP, reduction techniques) to classify problem tractability. Practical assignments using CUDA/OpenMP and real-world case studies (e.g., genome assembly, large-scale optimization) bridge theory with performance-aware implementation, emphasizing scalability and tradeoffs in algorithm selection.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC502',
           'Deep Learning',
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyMDlPtW_o_HekWc6ViiV5F9lc6ASCpAPo-zp_XaUjd8j-3m8BeIpaejG4DwqwwTHQC2M&usqp=CAU',
           'This course provides an in-depth exploration of modern deep learning architectures, including CNNs for image/video analysis, RNNs/LSTMs for sequential data, and GANs for generative modeling. Students will study reinforcement learning (Q-learning, policy gradients) for decision-making systems and transfer learning (fine-tuning, feature extraction) to optimize pre-trained models. Hands-on projects using PyTorch/TensorFlow cover cutting-edge applications like autonomous agents, style transfer, and multimodal AI, with emphasis on optimizing model performance, interpretability, and ethical deployment in real-world scenarios.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC503',
           'Quantum Computing',
           'https://gmo-research.ai/en/application/files/5716/6080/5815/Quantum_Computing_Image.png',
           'This course introduces the principles of quantum computation, beginning with qubits and their representations (Bloch sphere, Dirac notation), quantum gates (Pauli, Hadamard, CNOT) for state manipulation, and key quantum algorithms (Shor’s for factorization, Grover’s for search). Students will explore quantum error correction (stabilizer codes, surface codes) to mitigate decoherence, alongside simulators (Qiskit, Cirq) to implement circuits. Theoretical rigor is paired with hands-on labs, addressing both the transformative potential and current hardware limitations of quantum technologies in cryptography, optimization, and machine learning.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'SECOND_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC504',
           'Research Methodology',
           'https://www.papertrue.com/blog/wp-content/uploads/2024/03/Research-Methodology.png',
           'This course equips students with rigorous experimental design principles (hypothesis formulation, control variables, randomization) and statistical analysis techniques (ANOVA, regression, Bayesian inference) to ensure robust data interpretation. Participants will master literature review strategies (systematic reviews, meta-analysis) and academic publishing workflows (peer review, journal selection, ethical citations). Through hands-on projects, learners develop skills to design reproducible studies, analyze results with tools like R/Python, and communicate findings effectively via research papers, conference posters, and grant proposals—bridging scientific inquiry with professional dissemination.',
           (SELECT id FROM academic_years_t WHERE year_label = 'B.C.Sc (Fifth Year)'),
           'SECOND_SEMESTER',
           1
       );

-- Master's Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC601',
           'Advanced Research Methods',
           'https://www.macroinc.com/english/wp-content/uploads/2016/04/Internal-Webinar-final.jpg',
           'This course provides a comprehensive framework for conducting rigorous academic and applied research, covering research design (experimental, correlational, case study approaches) and methodological paradigms (qualitative, quantitative, and mixed-methods). Students will learn data collection techniques (surveys, interviews, experiments, observational studies) and master analytical tools (SPSS, NVivo, Python/R) for robust data interpretation. The curriculum emphasizes ethical considerations (IRB protocols, informed consent, bias mitigation) and research integrity throughout the process. Practical assignments guide learners in developing research proposals, executing studies, and presenting findings for scholarly or industry applications, ensuring methodological rigor and real-world relevance.',
           (SELECT id FROM academic_years_t WHERE year_label = 'M.C.Sc'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC602',
           'Distributed Systems',
           'https://miro.medium.com/v2/resize:fit:1400/1*1vYQfOU-iKGzSldPWjnfRA.jpeg',
           'This course examines the core principles of building reliable, large-scale distributed systems, covering consensus algorithms (Paxos, Raft, PBFT) for achieving agreement in decentralized networks and fault tolerance techniques (replication, checkpointing, leader election) to ensure system resilience. Students will explore distributed transactions (2PC, 3PC, Saga patterns) for data consistency and scalable system design (sharding, load balancing, CAP theorem tradeoffs). Through hands-on projects with frameworks like Apache ZooKeeper and distributed databases (Cassandra, Spanner), learners gain practical experience architecting systems that balance availability, consistency, and partition tolerance for real-world applications.',
           (SELECT id FROM academic_years_t WHERE year_label = 'M.C.Sc'),
           'SECOND_SEMESTER',
           2
       );

-- PhD Courses
INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC801',
           'Advanced Topics in Computing',
           'https://3.files.edl.io/685c/21/01/19/184006-aa6e74bf-15b6-4540-b40d-76823c84e605.jpg',
           'This course explores the vanguard of computing science, examining cutting-edge research areas such as quantum machine learning, neuromorphic computing, and bio-inspired algorithms. Students will investigate interdisciplinary approaches that bridge computing with fields like biotechnology (DNA storage), physics (quantum supremacy), and cognitive science (AGI development). The curriculum covers emerging computing paradigms including edge intelligence, swarm robotics, and differentiable programming, while critically assessing their societal implications. Through seminar-style discussions, hands-on prototyping, and literature reviews, participants will engage with open problems at the intersection of theory, hardware, and application—preparing them to contribute to the next wave of computational innovation.',
           (SELECT id FROM academic_years_t WHERE year_label = 'Ph.D'),
           'FIRST_SEMESTER',
           1
       );

INSERT INTO courses_t (course_code, name, image_url, description, academic_year_id, semester, lecturer_id)
VALUES (
           'CSC802',
           'Dissertation Research',
           'https://contenthub-static.grammarly.com/blog/wp-content/uploads/2023/04/Dissertation.png',
           'This course equips graduate students and emerging researchers with the skills to develop original research contributions, from ideation through execution, emphasizing innovative problem formulation and rigorous methodology. Participants will learn scholarly publication strategies, including high-impact journal targeting, peer review navigation, and open-access dissemination, while mastering research impact measurement through citation analysis, altmetrics, and translational outcomes. The curriculum blends hands-on writing workshops with critical analysis of research ecosystems, empowering students to amplify the reach and significance of their work within academic, industrial, and policy contexts.',
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
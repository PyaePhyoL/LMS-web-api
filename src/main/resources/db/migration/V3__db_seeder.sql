-- 1. New AI Research Lab Opening
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'University Launches Cutting-Edge AI Research Lab',
           'The Computer Science Department is proud to announce the opening of our new Artificial Intelligence Research Laboratory. ',
-- 'This state-of-the-art facility features 50 high-performance workstations equipped with NVIDIA A100 GPUs, dedicated servers for machine learning training, and a collaborative workspace for interdisciplinary research. The lab will focus on natural language processing, computer vision, and ethical AI development. Funded by a $5 million grant from the National Science Foundation, the lab will support graduate and undergraduate research projects. "This represents a quantum leap in our research capabilities," said Department Chair Dr. Sarah Chen. The lab officially opens on September 15th, with an open house scheduled for September 10th-12th.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619677/file.png',
           '2025-04-20 09:00:00',
           'johndoe@university.edu'
       );

-- 2. Annual Hackathon Announcement
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'Registration Open for 10th Annual University Hackathon',
           'The Department of Computer Science invites all students to participate in our flagship 48-hour hackathon event from November 3-5. ',
        -- This year''s theme is "Sustainable Computing Solutions" with challenges focusing on green algorithms, energy-efficient systems, and climate modeling applications. Over $25,000 in prizes will be awarded across categories including Best Technical Implementation, Most Innovative Idea, and Best First-Time Hackers. Industry sponsors include Google, Amazon, and Microsoft. "Last year''s winning team developed an AI-powered wildfire prediction system now being tested by the Forest Service," noted event coordinator Prof. James Wilson. Teams of 2-4 can register until October 20th. No prior experience required - workshops will be held throughout October to prepare participants.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619650/file.png',
           '2025-04-05 14:30:00',
           'sarahsmith@university.edu'
       );

-- 3. New Quantum Computing Course
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'Department Introduces Quantum Computing Specialization',
           'Beginning Spring 2024, the Computer Science program will offer a new Quantum Computing specialization track.',
               -- ' The curriculum includes four new courses: Quantum Algorithms (CS 401), Quantum Information Theory (CS 402), Quantum Hardware (CS 403), and a capstone project course. "With quantum computing moving from theory to practical applications, we''re preparing students for this transformative technology," said program director Dr. Michael Rodriguez. The university has partnered with IBM Quantum to provide access to real quantum computers through the cloud. A new lab with quantum simulation workstations is under construction in the Engineering Building. Current juniors and seniors can apply for the limited-enrollment program through the department website until December 1st.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619615/file.jpg',
           '2025-04-15 11:15:00',
           'sarahsmith@university.edu'
       );

-- 4. Cybersecurity Competition Results
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'University Team Places 3rd in National Cybersecurity Challenge',
           'Our cybersecurity student team "ByteDefenders" achieved third place in the prestigious National Collegiate Cyber Defense Competition against 85 universities.',
-- The team successfully defended simulated corporate networks against professional red-team attackers during the 3-day event. "Our focus on practical security skills in the classroom directly translated to competition success," said faculty advisor Prof. Lisa Zhang. The team implemented novel intrusion detection techniques that impressed industry judges from the NSA and leading tech firms. As part of their prize, team members will receive internships at CrowdStrike and scholarships for security certifications. The Computer Science Department will expand its cybersecurity lab with new penetration testing equipment based on lessons learned from the competition.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619575/file.jpg',
           '2025-04-10 16:45:00',
           'robertjohnson@university.edu'
       );

-- 5. New Faculty Hiring Announcement
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'Dr. Priya Patel Joins as Associate Professor of Human-Computer Interaction',
           'The Department welcomes Dr. Priya Patel, joining us from Stanford University where she pioneered research in accessible computing interfaces. ',
        -- Dr. Patel''s work focuses on developing technology for users with disabilities, including her groundbreaking eye-tracking input system for motor-impaired individuals. She will lead our new Accessibility Computing Lab and teach courses in User Experience Design (CS 305) and Assistive Technology (CS 410). "Dr. Patel represents exactly the kind of socially-conscious technologist we want to cultivate," said Dean Robert Williams. Her first public lecture, "Designing for All: The Future of Inclusive Computing," will be held November 8th in the Computer Science Auditorium. The department is currently recruiting two more faculty members in AI and distributed systems.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619544/file.avif',
           '2025-03-25 10:00:00',
           'robertjohnson@university.edu'
       );

-- 6. Student Startup Success
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'CS Seniors'' Startup Acquired by Tech Giant for $2.3 Million',
           'Computer Science seniors Jamal Williams and Sofia Chen have sold their educational technology startup CodePath to a major Silicon Valley company just months after launching from the university''s incubator program.',
            -- ' Their platform, which uses AI to personalize coding exercises for computer science students, grew to 50,000 users before acquisition. "The algorithms we developed in CS 450 - Machine Learning directly led to our breakthrough adaptive learning engine," Chen explained. The pair will join the acquiring company''s education division while completing their degrees. This marks the third student startup acquisition from the department this year. The university is expanding its entrepreneurship program with new courses in tech business fundamentals and a dedicated startup accelerator space opening January 2024.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619502/file.webp',
           '2025-04-05 13:20:00',
           'robertjohnson@university.edu'
       );

-- 7. Department Ranking Achievement
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'Computer Science Program Ranked Top 20 Nationally for Research Output',
           'The Department of Computer Science has been ranked #18 nationally for research productivity in the latest Academic Analytics report, climbing 12 spots from last year.',
                -- # The ranking reflects our faculty''s 127 published papers and $28 million in research grants during the assessment period. Particular strengths were noted in cybersecurity (ranked #9) and machine learning (ranked #15). "This recognition validates our strategy of combining fundamental research with real-world applications," said Department Chair Dr. Sarah Chen. The department will celebrate with a research symposium on December 5th showcasing undergraduate and graduate projects. Current initiatives include a new NSF-funded project on trustworthy AI and a Department of Defense contract for secure communication protocols.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619475/file.png',
           '2025-04-20 09:30:00',
           'emilywilson@university.edu'
       );

-- 8. Alumni Donation News
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'Tech CEO Alumnus Donates $10 Million for CS Scholarships',
           'Mark Reynolds (BS ''98), founder and CEO of CloudScale Technologies, has committed $10 million to establish the Reynolds Future Innovators Scholarship program.',
        -- The endowment will provide full tuition for 20 computer science students annually from underrepresented backgrounds. "This university gave me the foundation to build my career, and I want to open those same opportunities for others," Reynolds said at the announcement ceremony. The first cohort of Reynolds Scholars will be selected for Fall 2024 based on academic potential and demonstrated financial need. Additionally, $2 million of the gift will fund a new maker space in the Computer Science Building, featuring 3D printers, VR development stations, and IoT prototyping kits. Applications for the scholarship open January 15th.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619436/file.png',
           '2025-04-01 15:00:00',
           'emilywilson@university.edu'
       );

-- 9. Curriculum Update Announcement
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'Computer Science Curriculum Updated to Reflect Industry Trends',
           'The Department has approved major updates to the undergraduate computer science curriculum effective Fall 2024.',
        -- Changes include a new required course in Ethics of Computing (CS 210), expanded cloud computing content across multiple courses, and a revamped senior capstone sequence emphasizing team projects with industry partners. We conducted extensive surveys of alumni and employers to ensure our graduates have the most relevant skills," said curriculum committee chair Dr. Alan Park. The updates also introduce three new technical tracks: Cloud Systems Engineering, AI Application Development, and Cybersecurity Analytics. Current students can choose to follow either the old or new curriculum. The department will host information sessions on January 10th and 17th to explain the changes and help students plan their academic paths.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619406/file.png',
           '2025-03-15 11:45:00',
           'emilywilson@university.edu'
       );

-- 10. Research Breakthrough
INSERT INTO news_t (title, description, image_url, created_at, created_by)
VALUES (
           'University Researchers Develop Breakthrough in Quantum Machine Learning',
           'A team led by Dr. Elena Martinez has published groundbreaking research in Nature Computing Science demonstrating a quantum algorithm that dramatically accelerates certain machine learning tasks. ',
        -- Their Quantum Kernel Alignment technique shows 1000x speedup for specific optimization problems compared to classical approaches. "This could revolutionize how we train models for drug discovery and materials science," Martinez explained. The research involved collaboration with the Physics Department and Argonne National Laboratory. PhD student Ling Wei, lead author on the paper, has been invited to present the work at the International Conference on Quantum Computing. The algorithm is being implemented in the university''s quantum computing course (CS 401) this semester. Industry partners are already exploring licensing opportunities for the patented technique.',
           'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619284/file.jpg',
           '2025-03-05 14:15:00',
           'michaelchen@university.edu'
       );

INSERT INTO programming_contests_t (title, description, image_url, start_date, created_at, created_by)
VALUES ('Code Sprint 2025', 'Code Sprint 2025 is an intense, fast-paced programming competition designed to challenge coders of all skill levels.',
-- Whether you are a beginner looking to sharpen your coding skills or an experienced programmer aiming to test your speed and efficiency, this contest will push you to your limits. Participants will face a series of algorithmic and problem-solving challenges that require quick thinking, technical proficiency, and innovative solutions. The event will be divided into multiple rounds, each increasing in difficulty, ensuring an engaging and competitive environment. Besides testing your skills, Code Sprint 2025 is a great opportunity to connect with fellow programmers, exchange ideas, and learn new techniques. Winners will receive exciting prizes, certificates, and recognition from industry leaders. Get ready to code under pressure and prove your abilities!',
        'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748620119/file.png', '2025-06-10', NOW(), 'johndoe@university.edu');


INSERT INTO programming_contests_t (title, description, image_url, start_date, created_at, created_by)
VALUES ('AI Hackathon', 'AI Hackathon 2025 invites AI enthusiasts, data scientists, and developers to collaborate and create innovative artificial intelligence solutions that address real-world problems.',
        -- Over the course of the event, teams will brainstorm, prototype, and refine their AI-driven projects, exploring domains such as machine learning, natural language processing, computer vision, and automation. Participants will have access to cutting-edge tools and mentorship from industry experts to help bring their ideas to life. Whether you want to revolutionize healthcare, optimize logistics, or enhance user experiences with AI, this hackathon provides the perfect platform to showcase your talents. The competition will conclude with a presentation session where teams pitch their solutions to a panel of judges. Winners will be rewarded with prizes, networking opportunities, and potential collaborations with leading tech companies. Join us in shaping the future of AI!',
        'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748620345/file.webp', '2025-07-15', NOW(), 'johndoe@university.edu');

INSERT INTO programming_contests_t (title, description, image_url, start_date, created_at, created_by)
VALUES ('Data Science Challenge', 'The Data Science Challenge 2025 is a thrilling competition designed for data enthusiasts eager to tackle real-world problems using data analysis, machine learning, and predictive modeling.',
        -- Participants will work with complex datasets, identifying patterns, extracting insights, and developing data-driven solutions to pressing challenges across various industries. Whether you are a student, researcher, or professional, this event will test your analytical thinking, programming skills, and ability to tell compelling stories using data. The challenge will be structured into different tasks, requiring participants to preprocess data, build models, and optimize solutions within a limited timeframe. By participating, you will expand your expertise, gain valuable experience, and connect with top data scientists and AI specialists. The competition will conclude with presentations and awards for the best solutions, showcasing the incredible impact of data science in today’s world.',
        'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748620070/file.png', '2025-08-20', NOW(), 'johndoe@university.edu');

INSERT INTO programming_contests_t (title, description, image_url, start_date, created_at, created_by)
VALUES ('Cyber Security War', 'Cyber Security War 2025 is an electrifying event that challenges ethical hackers, security professionals, and cybersecurity enthusiasts to put their skills to the test in a series of hacking and defense competitions.',
-- Participants will engage in Capture The Flag (CTF) challenges, penetration testing simulations, cryptographic puzzles, and incident response scenarios that mimic real-world security threats. The competition aims to promote cybersecurity awareness while encouraging participants to develop practical skills in identifying vulnerabilities and fortifying systems against cyberattacks. Whether you are an expert or a beginner, this contest provides a fantastic learning experience, exposing you to advanced security techniques and best practices. Winning teams will be recognized with certificates, prizes, and industry connections, opening doors to cybersecurity careers and research opportunities. Prepare to outsmart the hackers, defend systems, and showcase your cybersecurity expertise!',
        'http://res.cloudinary.com/dfbqmtcdj/image/upload/v1748619949/file.webp', '2025-09-05', NOW(), 'johndoe@university.edu');


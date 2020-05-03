-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 10:32 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelling`
--

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `S_Id` int(11) NOT NULL,
  `C_Id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `EntryFee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`S_Id`, `C_Id`, `Name`, `Description`, `EntryFee`) VALUES
(1011, 1, 'Bangalore Palace', 'Located at Vasant Nagar, Bangalore Bangalore Palace was built by Rev. Garrett . The palace is owned by Mysore royal family, Srikanta Datta Narasimharaja Wadiyar. The palace have sprawling gardens and lawns which are used for public events including music concerts. There is also an amusement park called Fun World inside the palace complex.', '230.00'),
(1012, 1, 'Seshadri Iyer Memorial Hall', 'Located in the famous Cubbon park of Bangalore city Seshadri Iyer Memorial Hall is one of the most notable landmarks of this city built in 1915 AD. It is a circular classic European style building and houses the Karnataka?s State Central Library .', '60.00'),
(1013, 1, 'Attara Kacheri', 'Attara Kacheri now the Karnataka High Court is the colonial building which was built in 1864 A.D during British rule. Attara Kacheri is built with stone and brick with intense red hue in Gothic Style of architecture. It is also located inside the complex of Cubbon park', '0.00'),
(1014, 1, 'Devanahalli Fort', 'Located about 35 km from Bangalore City Devanahalli Fort was originally built in 1501 by Mallabairegowda. The Fort spans over an area of about 20 acres have as many as 12 semi-circular bastions. Th Fort have many temples inside like Venugopalaswamy temple, Siddalingeshwara temple, Raghavendra Swamy Math and much more.', '0.00'),
(1015, 1, 'The Bull Temple', 'Also Known by the name of Dodda Basavana Gudi , located in Basavanagudi in South Bangalore this temple is inside the park called Bugle Rock. The temple is dedicated to Hindu demi-god Nandi and is the biggest temple to Nandi in the world. The temple is built in Vijayanagara architectural style and the main statue is about 15 feet high and 20 feet wide.', '0.00'),
(1021, 2, 'Taj-ul-Masajid', 'Often referred to as ?The Crown of the Mosques?, ?Taj-ul-Masajid? is one of the largest mosques in India with a capacity to house 175,000 people at a time. Its generous size and splendid design also makes it one of the most distinguished mosques in the world. The construction of this magnificent mosque started during the reign of Mughal Emperor, Bahadur Shah Zafar between the period 1844 and 1860.?', '0.00'),
(1022, 2, 'Bhimbetka Caves', 'A UNESCO World Heritage Site, ?Bhimbetka Caves? is one of the ?must-visit? sightseeing places in Bhopal. Located just at a distance of about 45 km. from the main city, on the foothills of the Vindhya Mountains, the place was accidentally discovered by a renowned archaeologist, Dr. Vishnu Wakankar in 1957-58 when he ventured on a leisurely stroll in the area.', '10.00'),
(1023, 2, 'Sanchi Stupa', 'The eye-catching design and splendid architecture of this stupa displays an austere grandeur of its times, no wonder, it has been ranked amongst the UNESCO World Heritage Sites. Known for its ancient Stupas and other incredible Buddhist structures dating back to the Mauryan era between 3rd century BC and 12th century AD, the place also holds a great religious significance for Buddhists who swarm here in huge numbers from different corners of the globe.', '30.00'),
(1024, 2, 'Sair Sapata', 'Sair Sapata is a tourism and entertainment complex situated on the banks of the Upper Lake in Bhopal. Developed by the Madhya Pradesh State Tourism Development Corporation, it is spread over an area of 24.56 acres, and was inaugurated on 29 September 2011 by State Chief Minister.', '20.00'),
(1025, 2, 'Bhojtal', 'Bhojtal, formerly known as Upper Lake, is a large lake which lies on the western side of the capital city of Madhya Pradesh, Bhopal. It is a major source of drinking water for the residents of the city, serving around 40% of the residents with nearly 30 million imperial gallons (140,000 m3) of water per day. Bada talaab, along with the nearby Chhota Talaab, meaning small lake in Hindi, constitute Bhoj Wetland, which is now a Ramsar site.', '0.00'),
(1031, 3, 'Marina Beach', 'Stretching 13 kilometres in length from St. George Fort to Mahabalipuram, Marina Beach enjoys the limelight of both tourists and locals for being the second longest (urban) natural beach in the world. Witness cricket matches, fish markets, children flying kites and astrologers at the beach side as you take a walk along the shoreline.?', '0.00'),
(1032, 3, 'Ubbalamadugu Falls?', 'Located in the Chittoor district, approximately 80 kilometres from Chennai Ubbalamadugu Falls is situated inside the dense forest of Kaambakam. Also known as Tada Falls by locals, the waterfall is a beautiful sight accompanied by hillocks and greenery. Reaching the waterfall is an adventure in itself as you\'ll need to trek up till the waterfall and take guidance for the hike from the arrows marked on the way.?', '0.00'),
(1033, 3, 'Sri Parthasarathy Temple', 'Parthasarathy Temple, located in Triplicane area of Chennai, is a structure more than 1000 years old, standing in the heart of the bustling city. Dedicated to different avatars of Lord Vishnu within the many shrines of the temple, it attracts thousands of Vaishanvite followers from all across the country. The temple gets its name from the charioteer version of Lord Krishna when he drove the vehicle of Arjuna in the war.', '0.00'),
(1034, 3, 'Queens Land', 'Go crazy on a roller-coaster, capture the panoramic view on a cable car, splash at the Himalayan water ride or get puzzled at the Mirror House. With more than 50 rides spread over an area of 70 acres, this amusement park is a major draw for children and adults alike. You can also find food and beverages outlets that are located within the park.', '650.00'),
(1035, 3, 'Government Museum', 'The Government Museum also known as Egmore Museum or the Madras Museum is the second oldest museums in India. It has the largest collection of Roman antiquities outside Europe.', '15.00'),
(1041, 4, 'Forest Research Institute', 'Established in the year 1906, the Forest Research Institute is spread over 4.5 square kilometres and has an imposing Colonial and Greco-Roman styles of architecture. This premier institution in the field of forestry research in India is located in Dehradun, Uttarakhand. Nestled in the serene backdrop of the Doon Valley, Forest Research Institute is also a significant tourist attraction of Dehradun. The beautiful sprawling campus of Forest Research Institute has been drawing a lot of media as well.', '25.00'),
(1042, 4, 'Malsi Deer Park', 'Located at the base of the Shivalik range, Malsi Deer Park is a zoological garden, and it is home to two horned Deer, Tiger, Neelgai, Peacock and many other animals. Heaven for all the nature lovers out there, the beauty of the place is worth spending time at. Rich in flora and fauna, the park is a great point to unwind and break away from the busy life of the city.', '10.00'),
(1043, 4, 'Sahastradhara', 'Sahastradhara literally means \'thousand-fold spring\'. It is a popular attraction, famous for its ecstatic beauty and therapeutic value since its water contains Sulphur. While the place can be visited any time during the year, you would love the charming beauty of the waterfall during the rainy season when the stream proposes the appearance of a gushing torrent.', '0.00'),
(1044, 4, 'Lacchivala', 'A popular picnic destination, Lacchiwalla is famous for its lush greenery unspoiled by human activity. It is located at a small drive away from Dehradun. You can stay over at picturesque cottages and hotels.', '0.00'),
(1045, 4, 'Robber\'s Cave', 'Robber\'s cave is a river cave formed in the Himalayas about 8 kilometres from Dehradun in the north-eastern state of Uttarakhand. This river cave is very close to Sahasradhara which are the thousandfold springs in Uttarakhand. It is mostly frequented by tourists seeking the adventure of witnessing this natural formation that has river water flowing from the middle of a cave.', '0.00'),
(1051, 5, 'Red Fort', 'Delhi\'s most famous monument, the Red Fort, stands not only as a powerful reminder of the Mughal era India but also a symbol of India\'s struggle for freedom. It was build by fifth Mughal emperor Shah Jahan, when he decided to shift his capital there from Agra in 1638.', '30.00'),
(1052, 5, 'Akshardham', 'A relatively new attraction, this massive temple complex was built by the BAPS Swaminarayan Sanstha spiritual organization and opened in 2005. It\'s dedicated to showcasing Indian culture. As well as the astonishing architecture of the pink stone and white marble shrine, the complex includes sprawling garden, sculptures, and boat ride.?', '0.00'),
(1053, 5, 'Humayun\'s Tomb', 'If you think Humayun\'s Tomb looks a bit like the Taj Mahal in Agra, that\'s because it was the inspiration for the Taj Mahal\'s creation. The tomb was built in 1570, and houses the body of the second Mughal emperor, Humayun. It was the first of this type of Mughal architecture to be built in India, and the Mughal rulers followed it up with an extensive period of construction all over the country.?', '30.00'),
(1054, 5, 'India Gate', 'The towering archway of India Gate at the center of New Delhi is a war memorial, built in memory of the Indian soldiers who lost their lives fighting for the British Army in World War I. At night it glows warmly under floodlights, and the gardens that line its boulevard are a popular place to enjoy a warm summer\'s evening.', '0.00'),
(1055, 5, 'Lotus Temple', 'The Bahai Temple is commonly called the Lotus Temple, as it\'s shaped like a lotus flower. It\'s particularly pretty at night, when it\'s attractively lit up. Made out of concrete covered in white marble, the temple belongs to the Bahai Faith, which proclaims the unity of all people and religions.', '0.00'),
(1061, 6, 'Anjuna Beach', 'Anjuna Beach was once home to the hippies. They\'ve now moved on but their legacy remains. The Wednesday Anjuna Beach flea market is bigger than ever and continues to remain popular. Curlie\'s plays a lot more chill-out music than psychedelic trance these days though. Anjuna is an ideal area for backpackers and budget travelers.', '0.00'),
(1062, 6, 'Dudhsagar Falls', 'Dudhsagar Falls is a four-tiered waterfall located on the Mandovi River in the Indian state of Goa. It is amongst India\'s tallest waterfalls with a height of 310 m (1017 feet) and an average width of 30 metres (100 feet).', '50.00'),
(1063, 6, 'Aguada Fort', 'Fort Aguada and its lighthouse is a well-preserved seventeenth-century Portuguese fort standing in Goa, India, on Sinquerim Beach, overlooking the Arabian Sea.', '0.00'),
(1064, 6, 'Basilica of Bom Jesus', 'The Basilica of Bom Jesus or Borea Jezuchi Bajilika is located in Goa, India, and is part of the Churches and convents of Goa UNESCO World Heritage Site. The basilica holds the mortal remains of St. Francis Xavier. The church is located in Old Goa, which was the capital of Goa in the early days of Portuguese rules.', '0.00'),
(1065, 6, 'Chapora Fort', 'Chapora Fort, located in Bardez, Goa, rises high above the Chapora River. The fort sits on a prominent position which commands views in all directions. It also has steep slopes on all sides. The fort follows the outline of the higher slopes. This forms an irregular outer wall that uses the natural form to add defensive height to the fortifications.', '0.00'),
(1071, 7, 'Gwalior Fort', 'The location of Gwalior Fort itself is stunning. It stands magnificently on a rock that is isolated. The famous Mughal Emperor Babur described this fort as ?The Pearl in the Necklace of the Forts?. The construction of the fort was begun over 1000 years ago. The architecture of the fort is stunning. You will be mesmerized by the stone carvings here. The fort houses three temples and six palaces. The fort stands silent proof for the rule of various mighty dynasties.', '75.00'),
(1072, 7, 'Sun Temple', 'The name itself says it. Yes, Sun Temple is dedicated to Sun, which is worshipped as a God. The temple was built by the famous industrialist G.D. Birla in the year 1988. It is a reproduction of the renowned Sun Temple in Konark. The temple?s exterior is made of red sand stone and the interior is made of white marble. The temple attracts tourists from all parts of the world. Religious faith apart, the structure of the temple and the atmosphere make people throng the temple.', '40.00'),
(1073, 7, 'Jai Vilas Palace', 'Jai Vilas Palace is a stunning display of architectural grandeur of the bygone era. The palace built in European style has a blend of Tuscan, Italian and Corinthian styles. The palace is now converted into museum. The palace was constructed by Maharaja Jiyaji Rao Scindia in the year 1875. The Durbar Hall in the palace has its walls decorated with golden leaves. The largest pair of chandeliers in Asia is found hanging in the palace.', '70.00'),
(1074, 7, 'Memorial of Tansen', 'Tansen Memorial was constructed to commemorate a great musician of the bygone era. Tansen, the musician, was one among the nine gems that adorned the court of Akbar. The construction reflects Mughal style of architecture. The lush gardens surrounding Tansen Memorial offer great view. The memorial is famous for national level music festivals held here every year.', '0.00'),
(1075, 7, 'Tighra Dam', 'Tighra Dam is situated about 23 km from the city. The dam is huge and you will love the sight of migratory birds swimming in the water. Boating facilities are available here. This beautiful picnic spot is a perfect place to relax.', '50.00'),
(1081, 8, 'Howrah Bridge', 'The construction of the sixth longest cantilever bridge in the world, the Howrah Bridge is one of the most famous landmarks of Kolkata. The bridge was originally called the New Howrah Bridge as it was meant to replace an older pontoon bridge on the Hoogly River. The bridge is often considered to be one of the major National Landmarks in India and is also called the Rabindra Setu after the famous Bengali literary figure Rabindranath Tagore.', '0.00'),
(1082, 8, 'Victoria Memorial', 'Victoria Memorial is located on the plains at the banks of the River Hoogly and was completed in 1921. It is dedicated in the memory of Queen Victoria and is currently a museum. After the death of Queen Victoria in 1901, Lord Curzon commissioned the construction of this memorial and is built in a unique architectural blend of Mughal and British styles. The museum contains 25 galleries that house various antiquities and artifacts.', '20.00'),
(1083, 8, 'Jorasanko Thakurbari', 'Jorasanko Thakurbari or the House of the Thakurs is the ancestral residence of the Tagore family. The mansion was built during the 18th century by Prince Dwarkanath Tagore the grandfather of Rabindranath Tagore. The place now houses the Rabindra Bharathi University and a museum that contains the various articles and articles that depict and describe the life and times of the Tagores.', '10.00'),
(1084, 8, 'Kalighat Kali Temple', 'Kalighat Kali Temple is a Hindu temple in West Bengal, India dedicated to the Hindu goddess Kali. It is one of the 51 Shakti Peethas.Kalighat was a Ghat (landing stage) sacred to Kali on the old course of the Hooghly river (Bh?girathi) in the city of Calcutta. The name Calcutta is said to have been derived from the word Kalighat. The river over a period of time has moved away from the temple. The temple is now on the banks of a small canal called Adi Ganga which connects to the Hoogly.', '0.00'),
(1085, 8, 'New Town Eco Park', 'New Town Eco Park (Prakriti Tirtha) is an urban park in Rajarhat, Kolkata and the biggest park so far in India.The park is situated on a 480 acres (190 ha) plot and is surrounded by a 104 acres (42 ha) waterbody with an island in the middle. The park was conceptualised by Chief Minister of West Bengal, Mamata Banerjee in July 2011. West Bengal Housing Infrastructure Development Corporation (HIDCO) is the overarching body coordinating the construction of the park, along with different other government bodies responsible for implementation of different works inside the park.', '100.00'),
(1091, 9, 'Bara Imambara', 'The Bada Imambara was built by Asaf-ud-Daula, the Nawab of Lucknow, in 1784. Often referred to as Asafi Imambara, it is a shrine built by Shia Muslims for the purpose of Azadari. Asfi mosque, the Bhool Bhulaiyaa (the labyrinth), and bowli, a step well-with running water are some of the structures that together make up the complex. According to legends, the edifice also contains a blocked (tunnel) passageway, which leads through a mile-long underground passage to a location near the Gomti River.', '50.00'),
(1092, 9, 'Dr. Ambedar Park', 'Spread across an area of 107 acres of land, the modern architectural monument is dedicated to Dr. B.R. Ambedkar. The entire monument is built in red sandstone which was brought from the areas of Rajasthan. The park is located in Gomti Nagar which is one of the most posh localities of Lucknow.', '10.00'),
(1093, 9, 'Lucknow Zoo', 'Lucknow Zoo is also known as The Prince of Wales Zoological Park and is spread across an area of 71.6 acres of land. The zoo was built in 1921 to welcome the arrival of the Prince of Wales and contains several species of birds, animals and reptiles. The zoo is famous for breeding and housing endangered species like the White Tiger, Indian Wolf and Hog Deer etc.', '30.00'),
(1094, 9, 'Rumi Darwaza', 'Also known by the name, Turkish Gate, the Rumi Darwaza was built in 1784 by the Nawab Asaf-ud-daula. The monument is a massive gateway which is one of the best specimens of Awadhi Style architecture. The monument?s grandness in design is often compared to that of Rome and the Ottoman Empire and marks the entrance to the old city of Lucknow.', '0.00'),
(1095, 9, 'Chota Imambara', 'Another congregation complex of the Shia Muslim sect, The Chota Imambara was built in 1838 by Nawab Muhammad Shah Ali. The complex also serves as the tomb for the Nawab who is buried there alongside his mother. Right outside the complex also lays the 4 storied Satkhanda, an unfinished watchtower or observatory which was supposed to have 7 stories. The Nawab wanted to make a tower as tall as the Qutab Minar and is like the Leaning Tower of Pisa in design.', '0.00'),
(10101, 10, 'Chhatrapati Shivaji Maharaj Terminus', 'Chhatrapati Shivaji Maharaj Terminus, formerly known as Victoria Terminus, is a historic railway station and a UNESCO World Heritage Site in Mumbai, Maharashtra, India which serves as the headquarters of the Central Railways.', '0.00'),
(10102, 10, 'Gateway of India', 'Mumbai\'s most recognized monument, the Gateway of India, was constructed in 1924 to commemorate the visit of King George V and Queen Mary to the city. It\'s also where the last of the British troops departed, marking the end of British rule when India gained Independence in 1947. The looming Gateway is designed to be the first thing that visitors see when approaching Mumbai by boat. It\'s a popular place to start exploring Mumbai.', '0.00'),
(10103, 10, 'Marine Drive', 'Marine Drive is a 3.6-kilometre-long Boulevard in South Mumbai in the city of Mumbai, India. The road was constructed by late philanthropist Bhagojisheth Keer & Pallonji Mistry. It is a \'C\'-shaped six-lane concrete road along the coast, which is a natural bay.', '0.00'),
(10104, 10, 'Bandra-Worli Sea Link', 'The Bandra-Worli Sea Link is a cable-stayed bridge with pre-stressed concrete-steel viaducts on either side that links Bandra in the Western Suburbs of Mumbai with Worli in South Mumbai.', '0.00'),
(10105, 10, 'Bandstand', 'The Bandstand Promenade also known as Bandra Bandstand is a 1.2 kilometer long walkway along the sea on the western coast of Mumbai, India in the neighborhood of Bandra. It is simultaneously a popular hangout spot, a jogging track and a park. Towards the Land\'s End side of the promenade is an amphitheater.', '0.00'),
(10111, 11, 'Tata Tea Museum', 'Tata Tea Museum is located at the Nallathanni estate and the museum has curios and photographs that traces the growth and evolution of tea plantations in Munnar right from the tea sapling to an automated tea factory where it is processes. The Museum is a fitting tribute to the efforts put on by the initial planters in transforming one of the most popular hill stations and the epicenter of tea trade in Kerala.?', '75.00'),
(10112, 11, 'Cheeyapara Waterfalls', 'Cheeyappara Falls are on the way to Munnar after Neriamangalam and before Adimali and flows down in seven steps making a great view from the road near the second step from bottom. Valara is another waterfall near Cheeyapara that is enclosed by dense natural jungles. Indeed, it is also a good spot to enjoy a break and have a hot tea before reaching Munnar.', '0.00'),
(10113, 11, 'Pothamedu ViewPoint', 'Pothamedu ViewPoint: You can watch the beauty of the Munnar mist that is engulfing the green hills from Pothanmedu View point.The drive to the Pothamedu ViewPoint takes you over an old bridge and narrow roads and the views during the drive is also very scenic. You should try to sip the hot tea from the tea shop near the view point to enjoy the feel of Munnar to the full.', '0.00'),
(10114, 11, 'Kundala Lake', 'Kundala is Asia?s first arch dam and Neela Kurunji flowers which bloom once in twelve years, bloom in the hills and valleys around Kundala lake. Echo Point gets its names from the echo that is generated when you shout and window shopping and sightseeing in the toy shops around this tourist spot is a popular past time for guests visiting Munnar. The fresh mountain air, the mist-clad hills and panoramic view make it worth a visit.?', '150.00'),
(10115, 11, 'Marayoor Dolmens', 'ristine, exotic, adventurous, diverse and beautiful ? Marayoor is a land of waterfalls, rivers, rocky hills, bamboo forests, sandalwood trees, cave temples and paintings. Dolmens in Marayoor dates back to the stone age and in Malayalam the dolmens are called as Muniyaras or dwelling places of the Sadhus . Dolmens were created using slabs of rock, three for the sides and the fourth slab placed on top of these three as a roof. There are dolmens with 5 rock slabsas well where the 5th stone slab acts as front wall with an opening as entrance. Neelakurinji flowers that blossom only once in every twelve years is yet another spectacular native of Marayoor as well.', '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`S_Id`),
  ADD KEY `FC` (`C_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `FC` FOREIGN KEY (`C_Id`) REFERENCES `city` (`C_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

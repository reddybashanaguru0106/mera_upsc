import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class MyupdateScreen extends StatelessWidget {
  const MyupdateScreen({super.key});
  void _handleButtonTap() {
    CreateData();
  }

  // ignore: non_constant_identifier_names
  CreateData() {
    // ignore: unused_local_variable
    final db = FirebaseFirestore.instance;

    // ignore: unused_local_variable, non_constant_identifier_names
    final question = {
      "questions": [
        // {
        //   "id": "1",
        //   "subjectId": "2",
        //   "question":
        //       "Who was the first Governor-General of independent India?",
        //   "A": " Jawaharlal Nehru",
        //   "B": "Lord Mountbatten",
        //   "C": " Rajendra Prasad",
        //   "D": "C. Rajagopalachari",
        //   "answer": "B"
        // },
        // {
        //   "id": "2",
        //   "subjectId": "2",
        //   "question": "The Jallianwala Bagh massacre took place in which year?",
        //   "A": "1919",
        //   "B": "1922",
        //   "C": "1930",
        //   "D": "1942",
        //   "answer": "A"
        // },
        // {
        //   "id": "3",
        //   "subjectId": "2",
        //   "question":
        //       "Who was the first President of the Indian National Congress?",
        //   "A": "Dadabhai Naoroji",
        //   "B": "A.O. Hume",
        //   "C": "Mahatma Gandhi",
        //   "D": "Jawaharlal Nehru",
        //   "answer": "B"
        // },
        // {
        //   "id": "4",
        //   "subjectId": "2",
        //   "question": "The Swadeshi movement was launched in response to?",
        //   "A": " The partition of Bengal",
        //   "B": "The Rowlatt Act",
        //   "C": "The Jallianwala Bagh massacre",
        //   "D": "The Non-Cooperation Movement",
        //   "answer": "A"
        // },
        // {
        //   "id": "5",
        //   "subjectId": "2",
        //   "question":
        //       "The Dandi March was a significant event in which movement?",
        //   "A": "Quit India Movement",
        //   "B": "Non-Cooperation Movement",
        //   "C": " Civil Disobedience Movement",
        //   "D": "Khilafat Movement",
        //   "answer": "C"
        // },
        // {
        //   "id": "6",
        //   "subjectId": "2",
        //   "question": "Who was the founder of the All India Muslim League?",
        //   "A": "Muhammad Ali Jinnah",
        //   "B": "Jawaharlal Nehru",
        //   "C": " Mahatma Gandhi",
        //   "D": "Bal Gangadhar Tilak",
        //   "answer": "A"
        // },
        // {
        //   "id": "7",
        //   "subjectId": "2",
        //   "question": "The Simon Commission was appointed to?",
        //   "A": "Investigate the Jallianwala Bagh massacre",
        //   "B": " Review the Montagu-Chelmsford Reforms",
        //   "C": " Assess the political situation in India",
        //   "D": " Recommend reforms in the Indian Police Service",
        //   "answer": "C"
        // },
        // {
        //   "id": "8",
        //   "subjectId": "2",
        //   "question": "The Lucknow Pact of 1916 was signed between?",
        //   "A": "Indian National Congress and All India Muslim League",
        //   "B": " Indian National Congress and British Government",
        //   "C": "All India Muslim League and British Government",
        //   "D": " Indian National Congress and Hindu Mahasabha",
        //   "answer": "A"
        // },
        // {
        //   "id": "9",
        //   "subjectId": "2",
        //   "question":
        //       "The slogan 'Swaraj is my birthright and I shall have it' was given by?",
        //   "A": "Bal Gangadhar Tilak",
        //   "B": "Mahatma Gandhi",
        //   "C": "Bhagat Singh",
        //   "D": "Jawaharlal Nehru",
        //   "answer": "A"
        // },
        // {
        //   "id": "10",
        //   "subjectId": "2",
        //   "question":
        //       "The Lahore Session of the Indian National Congress in 1929 is famous for?",
        //   "A": " The demand for complete independence (Purna Swaraj)",
        //   "B": " The formation of the Indian National Army",
        //   "C": "The announcement of the Non-Cooperation Movement",
        //   "D": "The introduction of the Salt Satyagraha",
        //   "answer": "A"
        // },
        // {
        //   "id": '11',
        //   "subjectId": "2",
        //   "question": "Who founded the All India Forward Bloc in 1939?",
        //   "A": "Subhash Chandra Bose",
        //   "B": "Bhagat Singh",
        //   "C": "Jawaharlal Nehru",
        //   "D": "Vallabhbhai Patel",
        //   "answer": "A"
        // },
        // {
        //   "id": "12",
        //   "subjectId": "2",
        //   "question": "The Rowlatt Act was passed in which year?",
        //   "A": "1905",
        //   "B": "1919",
        //   "C": "1922",
        //   "D": "1942",
        //   "answer": "B"
        // },
        // {
        //   "id": "13",
        //   "subjectId": "2",
        //   "question": "The Quit India Movement was launched in which year?",
        //   "A": "1905",
        //   "B": "1919",
        //   "C": "1922",
        //   "D": "1942",
        //   "answer": "D"
        // },
        // {
        //   "id": "14",
        //   "subjectId": "2",
        //   "question":
        //       "Who among the following leaders is known as the 'Iron Man of India'?",
        //   "A": "Jawaharlal Nehru",
        //   "B": "Mahatma Gandhi",
        //   "C": "Vallabhbhai Patel",
        //   "D": " Rajendra Prasad",
        //   "answer": "C"
        // },
        // {
        //   "id": "15",
        //   "subjectId": "2",
        //   "question": "The Bardoli Satyagraha was led by?",
        //   "A": "Mahatma Gandhi",
        //   "B": "Jawaharlal Nehru",
        //   "C": "Sardar Vallabhbhai Patel",
        //   "D": "Bal Gangadhar Tilak",
        //   "answer": "C"
        // },
        // {
        //   "id": "16",
        //   "subjectId": "2",
        //   "question":
        //       "The slogan 'Do or Die' was associated with which movement?",
        //   "A": "Quit India Movement",
        //   "B": "Non-Cooperation Movement",
        //   "C": "Civil Disobedience Movement",
        //   "D": "Swadeshi Movement",
        //   "answer": "A"
        // },
        // {
        //   "id": "17",
        //   "subjectId": "2",
        //   "question":
        //       "The first session of the Indian National Congress was held in?",
        //   "A": "Mumbai",
        //   "B": "Kolkata",
        //   "C": " Delhi",
        //   "D": "Allahabad",
        //   "answer": "B"
        // },
        // {
        //   "id": "18",
        //   "subject": "2",
        //   "question": "The Khilafat Movement was launched in support of?",
        //   "A": " The Indian National Congress",
        //   "B": "The Indian National Army",
        //   "C": "The Indian Muslims",
        //   "D": "The Indian Socialists",
        //   "answer": "C"
        // },
        // {
        //   "id": "19",
        //   "subjectId": "2",
        //   "question":
        //       "The August Offer was announced by the British Government in which year?",
        //   "A": "1905",
        //   "B": "1919",
        //   "C": "1940",
        //   "D": "1942",
        //   "answer": "C"
        // },
        // {
        //   "id": "20",
        //   "subjectId": "2",
        //   "question": "The leader of the Ghadar Party was?",
        //   "A": "Bhagat Singh",
        //   "B": "Subhash Chandra Bose",
        //   "C": " Lala Lajpat Rai",
        //   "D": "Kartar Singh Sarabha",
        //   "answer": "D"
        // },
        // {
        //   "id": "21",
        //   "subjectId": "1",
        //   "question": "Which country hosted the 2020 Summer Olympics?",
        //   "A": " Brazil",
        //   "B": "Japan",
        //   "C": "China",
        //   "D": "Australia",
        //   "answer": "B"
        // },
        // {
        //   "id": "22",
        //   "subjectId": "1",
        //   "question":
        //       "Which country recently became the first to legalize euthanasia?",
        //   "A": "Canada",
        //   "B": " Netherlands",
        //   "C": " Belgium",
        //   "D": "Switzerland",
        //   "answer": "C"
        // },
        // {
        //   "id": "23",
        //   "subjectId": "1",
        //   "question":
        //       "The Regional Comprehensive Economic Partnership (RCEP) is a trade agreement among how many countries?",
        //   "A": "10",
        //   "B": "12",
        //   "C": "15",
        //   "D": "18",
        //   "answer": "A"
        // },
        // {
        //   "id": "24",
        //   "subjectId": "1",
        //   "question":
        //       "Which country recently withdrew from the Paris Agreement on climate change?",
        //   "A": "United States",
        //   "B": "China",
        //   "C": "India",
        //   "D": "Germany",
        //   "answer": "A"
        // },
        // {
        //   "id": "25",
        //   "subjectId": "1",
        //   "question":
        //       "The Kigali Amendment is associated with the phase-out of which type of substances?",
        //   "A": " Ozone-depleting substances",
        //   "B": " Greenhouse gases",
        //   "C": "Persistent organic pollutants",
        //   "D": "Heavy metals",
        //   "answer": "A"
        // },
        // {
        //   "id": "26",
        //   "subjectId": "1",
        //   "question": "Who is the current President of the United States?",
        //   "A": "Joe Biden",
        //   "B": " Donald Trump",
        //   "C": " Barack Obama",
        //   "D": "George W. Bush",
        //   "answer": "A"
        // },
        // {
        //   "id": "27",
        //   "subjectId": "1",
        //   "question":
        //       "Which country recently signed the Abraham Accords, normalizing relations with Israel?",
        //   "A": "Saudi Arabia",
        //   "B": " United Arab Emirates",
        //   "C": "Qatar",
        //   "D": "Iran",
        //   "answer": "B"
        // },
        // {
        //   "id": "28",
        //   "subjectId": "1",
        //   "question":
        //       "The International Solar Alliance (ISA) was launched at the United Nations Climate Change Conference held in?",
        //   "A": "Paris",
        //   "B": "Marrakech",
        //   "C": "Cancun",
        //   "D": "Kyoto",
        //   "answer": "B"
        // },
        // {
        //   "id": "29",
        //   "subjectId": "1",
        //   "question":
        //       "The African Continental Free Trade Area (AfCFTA) is aimed at promoting trade and economic integration among how many African countries?",
        //   "A": "44",
        //   "B": "55",
        //   "C": "60",
        //   "D": "70",
        //   "answer": "B"
        // },
        // {
        //   "id": "30",
        //   "subjectId": "1",
        //   "question":
        //       "Which Indian state recently declared the Kuno Wildlife Sanctuary as a national park?",
        //   "A": "Madhya Pradesh",
        //   "B": "Rajasthan",
        //   "C": " Gujarat",
        //   "D": "Uttar Pradesh",
        //   "answer": "A"
        // },
        // {
        //   "id": "31",
        //   "subjectId": "1",
        //   "question":
        //       "The Bodoland Territorial Region (BTR) is located in which Indian state?",
        //   "A": " Assam",
        //   "B": "Arunachal Pradesh",
        //   "C": "Meghalaya",
        //   "D": "Manipur",
        //   "answer": "A"
        // },
        // {
        //   "id": "32",
        //   "subjectId": "1",
        //   "question":
        //       "The National Infrastructure Pipeline (NIP) aims to invest how much amount in infrastructure projects over the next five years?",
        //   "A": "Rs. 50 lakh crore",
        //   "B": "Rs. 75 lakh crore",
        //   "C": "Rs. 100 lakh crore",
        //   "D": "Rs. 150 lakh crore",
        //   "answer": "C"
        // },
        // {
        //   "id": "33",
        //   "subjectId": "1",
        //   "question":
        //       "The Nag River rejuvenation project is being implemented in which Indian city?",
        //   "A": "Delhi",
        //   "B": "Mumbai",
        //   "C": "Nagpur",
        //   "D": "Chennai",
        //   "answer": "C"
        // },
        // {
        //   "id": "34",
        //   "subjectId": "1",
        //   "question":
        //       "Which Indian state recently launched the Mukhyamantri Bal Seva Yojana to provide financial assistance to children in need?",
        //   "A": " Maharashtra",
        //   "B": "Karnataka",
        //   "C": "Rajasthan",
        //   "D": "Punjab",
        //   "answer": "B"
        // },
        // {
        //   "id": "35",
        //   "subjectId": "1",
        //   "question":
        //       "The Khelo India Youth Games is associated with which sports?",
        //   "A": "Athletics",
        //   "B": "Wrestling",
        //   "C": " Boxing",
        //   "D": "All of the above",
        //   "answer": "D",
        // },
        // {
        //   "id": "36",
        //   "subjectId": "1",
        //   "question":
        //       "The National Education Policy 2020 aims to achieve universalization of education up to which level?",
        //   "A": " Primary",
        //   "B": "Secondary",
        //   "C": "Higher education",
        //   "D": "All of the above",
        //   "answer": "D"
        // },
        // {
        //   "id": "37",
        //   "subjectId": "1",
        //   "question":
        //       "The Atal Tunnel, the world's longest highway tunnel above 10,000 feet, is located in which Indian state?",
        //   "A": "Himachal Pradesh",
        //   "B": "Jammu and Kashmir",
        //   "C": "Uttarakhand",
        //   "D": "Arunachal Pradesh",
        //   "answer": "A"
        // },
        // {
        //   "id": "38",
        //   "subjectId": "1",
        //   "question":
        //       "Which Indian city hosted the 107th Indian Science Congress in 2020?",
        //   "A": "Chennai",
        //   "B": "Kolkata",
        //   "C": "Bengaluru",
        //   "D": "Pune",
        //   "answer": "C"
        // },
        // {
        //   "id": "39",
        //   "subjectId": "1",
        //   "question":
        //       "The National Nutrition Mission, also known as Poshan Abhiyan, aims to address malnutrition among children and women. It was launched by the Ministry of?",
        //   "A": "Health and Family Welfare",
        //   "B": "Women and Child Development",
        //   "C": "Social Justice and Empowerment",
        //   "D": "Human Resource Development",
        //   "answer": "B"
        // },
        // {
        //   "id": "40",
        //   "subjectId": "1",
        //   "question":
        //       "The recently launched One Nation-One Ration Card scheme aims to facilitate the portability of ration cards across how many states in India?",
        //   "A": "15",
        //   "B": "20",
        //   "C": "25",
        //   "D": "32",
        //   "answer": "D"
        // },
        // {
        //   "id": "41",
        //   "subjectId": "3",
        //   "question":
        //       "The Strait of Gibraltar connects which two bodies of water?",
        //   "A": " Mediterranean Sea and Atlantic Ocean",
        //   "B": "Red Sea and Arabian Sea",
        //   "C": "Baltic Sea and North Sea",
        //   "D": " Persian Gulf and Indian Ocean",
        //   "answer": "A"
        // },
        // {
        //   "id": "42",
        //   "subjectId": "3",
        //   "question":
        //       "The Tropic of Cancer passes through how many Indian states?",
        //   "A": "6",
        //   "B": "8",
        //   "C": "10",
        //   "D": "12",
        //   "answer": "B"
        // },
        // {
        //   "id": "43",
        //   "subjectId": "3",
        //   "question":
        //       "The Sundarbans mangrove forest is located in which Indian state?",
        //   "A": " West Bengal",
        //   "B": "Odisha",
        //   "C": "Tamil Nadu",
        //   "D": " Kerala",
        //   "answer": "A"
        // },
        // {
        //   "id": "44",
        //   "subjectId": "3",
        //   "question":
        //       "The Danube River flows through which European capital city?",
        //   "A": "Berlin",
        //   "B": "Paris",
        //   "C": "Vienna",
        //   "D": "Rome",
        //   "answer": "C"
        // },
        // {
        //   "id": "45",
        //   "subjectId": "3",
        //   "question":
        //       "The Great Barrier Reef, the world's largest coral reef system, is located off the coast of which country?",
        //   "A": "Australia",
        //   "B": "Indonesia",
        //   "C": "Brazil",
        //   "D": "Mexico",
        //   "answer": "A"
        // },
        // {
        //   "id": "46",
        //   "subjectId": "3",
        //   "question":
        //       "Mount Kilimanjaro, the highest peak in Africa, is located in which country?",
        //   "A": "Kenya",
        //   "B": "South Africa",
        //   "C": "Tanzania",
        //   "D": "Ethiopia",
        //   "answer": "C"
        // },
        // {
        //   "id": "47",
        //   "subjectId": "3",
        //   "question":
        //       "The Amazon rainforest is primarily located in which South American country?",
        //   "A": "Brazil",
        //   "B": "Peru",
        //   "C": "Colombia",
        //   "D": "Venezuela",
        //   "answer": "A"
        // },
        // {
        //   "id": "48",
        //   "subjectId": "3",
        //   "question":
        //       "The city of Mecca, the holiest site in Islam, is located in which country?",
        //   "A": " Saudi Arabia",
        //   "B": "Egypt",
        //   "C": "Iran",
        //   "D": "Jordan",
        //   "answer": "A"
        // },
        // {
        //   "id": "49",
        //   "subjectId": "3",
        //   "question": "The Gobi Desert is located in which continent?",
        //   "A": "Asia",
        //   "B": "Africa",
        //   "C": "South America",
        //   "D": "Australia",
        //   "answer": "A"
        // },
        // {
        //   "id": "50",
        //   "subjectId": "3",
        //   "question":
        //       "The Strait of Malacca, one of the busiest shipping lanes in the world, connects which two bodies of water?",
        //   "A": "Indian Ocean and Pacific Ocean",
        //   "B": "Arabian Sea and Bay of Bengal",
        //   "C": " Red Sea and Gulf of Aden",
        //   "D": "South China Sea and Andaman Sea",
        //   "answer": "D"
        // },
        // {
        //   "id": "51",
        //   "subjectId": "3",
        //   "question":
        //       "The Victoria Falls, one of the largest waterfalls in the world, is located on the border of which two countries?",
        //   "A": " Zambia and Zimbabwe",
        //   "B": "Brazil and Argentina",
        //   "C": "Canada and the United States",
        //   "D": "Norway and Sweden",
        //   "answer": "A"
        // },
        // {
        //   "id": "52",
        //   "subjectId": "3",
        //   "question":
        //       "The Strait of Hormuz is a strategically important waterway located between which two countries?",
        //   "A": " Iran and Saudi Arabia",
        //   "B": "Yemen and Oman",
        //   "C": "Qatar and Bahrain",
        //   "D": "Iran and Oman",
        //   "answer": "D"
        // },
        // {
        //   "id": "53",
        //   "subjectId": "3",
        //   "question": "The Suez Canal connects which two bodies of water?",
        //   "A": "Mediterranean Sea and Red Sea",
        //   "B": " Black Sea and Aegean Sea",
        //   "C": "Arabian Sea and Persian Gulf",
        //   "D": "Baltic Sea and North Sea",
        //   "answer": "A"
        // },
        // {
        //   "id": "54",
        //   "subjectId": "3",
        //   "question":
        //       "The Himalayas are formed by the collision of which two tectonic plates?",
        //   "A": " Indian Plate and Eurasian Plate",
        //   "B": " African Plate and Eurasian Plate",
        //   "C": " Pacific Plate and Australian Plate",
        //   "D": "North American Plate and South American Plate",
        //   "answer": "A"
        // },
        // {
        //   "id": "55",
        //   "subjectId": "3",
        //   "question":
        //       "The Andes, the longest mountain range in the world, is located in which continent?",
        //   "A": "South America",
        //   "B": "North America",
        //   "C": "Europe",
        //   "D": "Asia",
        //   "answer": "A"
        // },
        // {
        //   "id": "56",
        //   "subjectId": "3",
        //   "question":
        //       "The Arabian Peninsula is primarily occupied by which country?",
        //   "A": "Saudi Arabia",
        //   "B": "Iraq",
        //   "C": "Iran",
        //   "D": "United Arab Emirates",
        //   "answer": "A"
        // },
        // {
        //   "id": "57",
        //   "subjectId": "3",
        //   "question": "The Bay of Bengal is bounded by which three countries?",
        //   " A": " India, Sri Lanka, and Maldives",
        //   "B": "India, Bangladesh, and Myanmar",
        //   "C": "India, Thailand, and Malaysia",
        //   "D": "India, Pakistan, and Iran",
        //   "answer": "B"
        // },
        // {
        //   "id": "58",
        //   "subjectId": "3",
        //   "question":
        //       "The Dhaulagiri, the seventh highest mountain in the world, is located in which country?",
        //   "A": "Bhutan",
        //   "B": "China",
        //   "C": "India",
        //   "D": "Nepal",
        //   "answer": "D",
        // },
        // {
        //   "id": "59",
        //   "subjectId": "3",
        //   "question":
        //       "The Atacama Desert, one of the driest places on Earth, is located in which continent?",
        //   "A": "Africa",
        //   "B": "Europe",
        //   "C": " South America",
        //   "D": "Australia",
        //   "answer": "C"
        // },
        // {
        //   "id": "60",
        //   "subjectId": "3",
        //   "question": "The Strait of Dover separates which two countries?",
        //   "A": "Turkey and Greece",
        //   "B": " Spain and Morocco",
        //   "C": " Italy and Greece",
        //   "D": "France and the United Kingdom",
        //   "answer": "D"
        // },
        // {
        //   "id": "61",
        //   "subjectId": "4",
        //   "question":
        //       "Which of the following is a greenhouse gas responsible for global warming?",
        //   "A": "Oxygen",
        //   "B": "Nitrogen",
        //   "C": " Carbon dioxide",
        //   "D": "Argon",
        //   "answer": "C"
        // },
        // {
        //   "id": "62",
        //   "subjectId": "4",
        //   "question": "The term 'biodiversity' refers to:",
        //   "A": "The number of species in an ecosystem",
        //   "B": "The genetic variation within a species",
        //   "C": " The variety of ecosystems on Earth",
        //   "D": "All of the above",
        //   "answer": "D"
        // },
        // {
        //   "id": "63",
        //   "subjectId": "4",
        //   "question":
        //       "The process of converting atmospheric nitrogen into a form usable by plants is called:",
        //   "A": "Nitrogen fixation",
        //   "B": "Photosynthesis",
        //   "C": "Respiration",
        //   "D": "Transpiration",
        //   "answer": "A"
        // },
        // {
        //   "id": "64",
        //   "subjectId": "4",
        //   "question":
        //       "The depletion of the ozone layer is primarily caused by the release of:",
        //   "A": " Carbon dioxide",
        //   "B": "Methane",
        //   "C": "Chlorofluorocarbons",
        //   "D": "Nitrous oxide",
        //   "answer": "C"
        // },
        // {
        //   "id": "65",
        //   "subjectId": "4",
        //   "question":
        //       "Which of the following is an example of a renewable energy source?",
        //   "A": "Coal",
        //   "B": " Natural gas",
        //   "C": "Solar power",
        //   "D": "Nuclear power",
        //   "answer": "C"
        // },
        // {
        //   "id": "66",
        //   "subjectId": "4",
        //   "question": "The term 'deforestation' refers to:",
        //   "A": "The process of planting trees in a barren area",
        //   "B": "The cutting down of trees in a forest",
        //   "C": "The preservation of forests for future generations",
        //   "D": "The study of forest ecosystems",
        //   "answer": "B"
        // },
        // {
        //   "id": "67",
        //   "subjectId": "4",
        //   "question": "The Paris Agreement, signed in 2015, aims to:",
        //   "A": "Reduce global greenhouse gas emissions",
        //   "B": "Promote international trade in renewable energy",
        //   "C": " Protect endangered species",
        //   "D": " Improve access to clean water and sanitation",
        //   "answer": "A"
        // },
        // {
        //   "id": "68",
        //   "subjectId": "4",
        //   "question":
        //       "The'ozone hole' is most commonly found over which region?",
        //   "A": "Antarctica",
        //   "B": "Amazon rainforest",
        //   "C": " Sahara Desert",
        //   "D": " Himalayan Mountains",
        //   "answer": "A"
        // },
        // {
        //   "id": "69",
        //   "subjectId": "4",
        //   "question": "Acid rain is primarily caused by the emission of:",
        //   "A": "Carbon dioxide",
        //   "B": "Sulfur dioxide and nitrogen oxides",
        //   "C": "Methane",
        //   "D": "Ozone",
        //   "answer": "B"
        // },
        // {
        //   "id": "70",
        //   "subjectId": "4",
        //   "question":
        //       "The Intergovernmental Panel on Climate Change (IPCC) is a:",
        //   "A": "United Nations agency",
        //   "B": "Non-profit organization",
        //   "C": "Government department",
        //   "D": "Private research institution",
        //   "answer": "A"
        // },
        // {
        //   "id": "71",
        //   "subjectId": "4",
        //   "question": "Which of the following is a non-renewable resource?",
        //   "A": "Wind energy",
        //   "B": "Geothermal energy",
        //   "C": "Coal",
        //   "D": "Biomass",
        //   "answer": "C"
        // },
        // {
        //   "id": "72",
        //   "subjectId": "4",
        //   "question": "The term 'biodiversity hotspot' refers to:",
        //   "A": "Areas with high species diversity",
        //   "B": " Areas with low species diversity",
        //   "C": "Areas with high genetic variation",
        //   "D": "Areas with high ecosystem productivity",
        //   "answer": "A"
        // },
        // {
        //   "id": "73",
        //   "subjectId": "4",
        //   "question":
        //       "The Montreal Protocol is an international agreement aimed at:",
        //   "A": "Reducing greenhouse gas emissions",
        //   "B": "Protecting endangered species",
        //   "C": "Regulating the use of ozone-depleting substances",
        //   "D": " Promoting sustainable agriculture",
        //   "answer": "C"
        // },
        // {
        //   "id": "74",
        //   "subjectId": "4",
        //   "question":
        //       "Which of the following is a greenhouse gas with a much higher warming potential than carbon dioxide?",
        //   "A": "Methane",
        //   "B": "Nitrous oxide",
        //   "C": "Carbon monoxide",
        //   "D": "Hydrogen sulfide",
        //   "answer": "A"
        // },
        // {
        //   "id": "75",
        //   "subjectId": "4",
        //   "question": "The term 'carbon footprint' refers to:",
        //   "A":
        //       "The total amount of carbon dioxide emitted by an individual or organization",
        //   "B": "The amount of carbon stored in a forest ecosystem",
        //   "C": "The impact of carbon emissions on climate change",
        //   "D":
        //       "The process of capturing and storing carbon dioxide underground",
        //   "answer": "A"
        // },
        // {
        //   "id": "76",
        //   "subjectId": "4",
        //   "question":
        //       "The Convention on Biological Diversity (CBD) is an international treaty that aims to:",
        //   "A": "Reduce the consumption of fossil fuels",
        //   "B": "Protect endangered species and their habitats",
        //   "C": "Promote sustainable development",
        //   "D": " Regulate the use of pesticides and herbicides",
        //   "answer": "B"
        // },
        // {
        //   "id": "77",
        //   "subjectId": "4",
        //   "question": "The concept of 'carbon sequestration' refers to:",
        //   "A": "The release of carbon dioxide into the atmosphere",
        //   "B": "The storage of carbon dioxide in underground reservoirs",
        //   "C":
        //       "The absorption of carbon dioxide by plants during photosynthesis",
        //   "D": "The breakdown of organic matter by microorganisms",
        //   "answer": "B"
        // },
        // {
        //   "id": "78",
        //   "subjectId": "4",
        //   "question":
        //       "The 'ozone layer' is located in which region of the Earth's atmosphere?",
        //   "A": "Troposphere",
        //   "B": "Stratosphere",
        //   "C": "Mesosphere",
        //   "D": "Thermosphere",
        //   "answer": "B"
        // },
        // {
        //   "id": "79",
        //   "subjectId": "4",
        //   "question": "The term 'biodiversity conservation' refers to",
        //   "A": "The protection of individual species",
        //   "B": "The restoration of degraded ecosystems",
        //   "C": " The sustainable use of natural resources",
        //   "D": "The preservation of overall ecological diversity",
        //   "answer": "D"
        // },
        // {
        //   "id": "80",
        //   "subjectId": "4",
        //   "question": "The concept of 'sustainable development' aims to:",
        //   "A": " Promote economic growth at all costs",
        //   "B": "Preserve natural resources for future generations",
        //   "C": "Reduce the global population",
        //   "D": "Maximize profits for multinational corporations",
        //   "answer": "B"
        // },
        // {
        //   "id": "81",
        //   "subjectId": "5",
        //   "question":
        //       "Which of the following is the study of the structure and composition of matter?",
        //   "A": "Physics",
        //   "B": "Chemistry",
        //   "C": "Biology",
        //   "D": "Geology",
        //   "answer": "B"
        // },
        // {
        //   "id": "82",
        //   "subjectId": "5",
        //   "question":
        //       "The phenomenon of light bending when passing from one medium to another is known as:",
        //   "A": "Reflection",
        //   "B": "Refraction",
        //   "C": "Diffraction",
        //   "D": "Interference",
        //   "answer": "B"
        // },
        // {
        //   "id": "83",
        //   "subejctId": "5",
        //   "question": "The SI unit of electric current is:",
        //   "A": "Ohm",
        //   "B": "Watt",
        //   "C": "Ampere",
        //   "D": "Volt",
        //   "answer": "C"
        // },
        // {
        //   "id": "84",
        //   "subjectId": "5",
        //   "question":
        //       "The human body's primary source of energy comes from the metabolism of:",
        //   "A": "Carbohydrates",
        //   "B": "Proteins",
        //   "C": "Fats",
        //   "D": "Vitamins",
        //   "answer": "A"
        // },
        // {
        //   "id": "85",
        //   "subjectId": "5",
        //   "question":
        //       "The process by which plants convert sunlight into chemical energy is called:",
        //   "A": "Respiration",
        //   "B": "Photosynthesis",
        //   "C": "Transpiration",
        //   "D": "Reproduction",
        //   "answer": "B"
        // },
        // {
        //   "id": "86",
        //   "subjectId": "5",
        //   "question":
        //       "Which of the following is responsible for the transmission of genetic information?",
        //   "A": "Protein",
        //   "B": "Lipid",
        //   "C": "RNA",
        //   "D": "DNA",
        //   "answer": "D"
        // },
        // {
        //   "id": "87",
        //   "subejctId": "87",
        //   "question": "The speed of light in a vacuum is approximately:",
        //   "A": "300,000 km/s",
        //   "B": "300,000 m/s",
        //   "C": "300,000 miles/hour",
        //   "D": "300,000 km/hour",
        //   "answer": "A"
        // },
        // {
        //   "id": "88",
        //   "subejctId": "5",
        //   "question":
        //       "Which of the following is the densest planet in our solar system?",
        //   "A": "Mercury",
        //   "B": "Venus",
        //   "C": "Earth",
        //   "D": "Mars",
        //   "answer": "C"
        // },
        // {
        //   "id": "89",
        //   "subejctId": "5",
        //   "question":
        //       "The pH scale is used to measure the acidity or alkalinity of a substance. A pH value of 7 indicates:",
        //   "A": "Acidic solution",
        //   "B": "Neutral solution",
        //   "C": "Alkaline solution",
        //   "D": "Basic solution",
        //   "answer": "B"
        // },
        // {
        //   "id": "90",
        //   "subejctId": "5",
        //   "question": "Which of the following is a greenhouse gas?",
        //   "A": "Oxygen",
        //   "B": "Nitrogen",
        //   "C": "Carbon dioxide",
        //   "D": "Argon",
        //   "answer": "C"
        // },
        // {
        //   "id": "91",
        //   "subejctId": "5",
        //   "question":
        //       "The process of converting solid directly into vapor without melting is called:",
        //   "A": "Sublimation",
        //   "B": "Condensation",
        //   "C": "Evaporation",
        //   "D": "Freezing",
        //   "answer": "A"
        // },
        // {
        //   "id": "92",
        //   "subejctId": "5",
        //   "question":
        //       "The atomic number of an element is determined by the number of:",
        //   "A": "Electrons",
        //   "B": "Protons",
        //   "C": "Neutrons",
        //   "D": "Nucleons",
        //   "answer": "B"
        // },
        // {
        //   "id": "93",
        //   "subejctId": "5",
        //   "question": "Which of the following is a vector quantity?",
        //   "A": "Mass",
        //   "B": "Speed",
        //   "C": "Distance",
        //   "D": "Force",
        //   "answer": "D"
        // },
        // {
        //   "id": "94",
        //   "subejctId": "5",
        //   "question":
        //       "The process by which plants lose water through their leaves is called:",
        //   "A": "Transpiration",
        //   "B": "Respiration",
        //   "C": "Photosynthesis",
        //   "D": "Evaporation",
        //   "answer": "A"
        // },
        // {
        //   "id": "95",
        //   "subejctId": "5",
        //   "question":
        //       "Which of the following is not a primary color in additive color mixing?",
        //   "A": "Red",
        //   "B": "Green",
        //   "C": "Blue",
        //   "D": "Yellow",
        //   "answer": "D"
        // },
        // {
        //   "id": "96",
        //   "subejctId": "5",
        //   "question":
        //       "The hormone responsible for regulating blood sugar levels is:",
        //   "A": "Insulin",
        //   "B": "Glucagon",
        //   "C": "Estrogen",
        //   "D": "Testosterone",
        //   "answer": "A"
        // },
        // {
        //   "id": "97",
        //   "subejctId": "5",
        //   "question":
        //       "The process of converting light energy into electrical energy in solar cells is called:",
        //   "A": "Photolysis",
        //   "B": "Photosynthesis",
        //   "C": " Photovoltaic effect",
        //   "D": "Photoelectric effect",
        //   "answer": "C"
        // },
        // {
        //   "id": "98",
        //   "subejctId": "5",
        //   "question":
        //       "Which of the following is responsible for carrying oxygen in the blood?",
        //   "A": "Hemoglobin",
        //   "B": "Insulin",
        //   "C": "Glucose",
        //   "D": "Adrenaline",
        //   "answer": "A"
        // },
        // {
        //   "id": "99",
        //   "subejctId": "5",
        //   "question":
        //       "The process of breaking down complex molecules into simpler ones is called:",
        //   "A": "Anabolism",
        //   "B": "Catabolism",
        //   "C": "Metabolism",
        //   "D": "Respiration",
        //   "answer": "B"
        // },
        // {
        //   "id": "100",
        //   "subejctId": "5",
        //   "question":
        //       "The branch of science that deals with the study of the Earth's physical structure and substance is called:",
        //   "A": "Geology",
        //   "B": "Astronomy",
        //   "C": "Biology",
        //   "D": "Physics",
        //   "answer": "A"
        // },
        // {
        //   "id": "101",
        //   "subejctId": "6",
        //   "question":
        //       "Climate change refers to long-term shifts in weather patterns, largely caused by human activities such as burning fossil fuels and deforestation. It poses significant challenges to the environment and human societies."
        //           "What is the primary cause of climate change?",
        //   "A": " Solar radiation",
        //   "B": "Natural disasters",
        //   "C": "Human activities",
        //   "D": "Volcanic eruptions",
        //   "answer": "C"
        // },
        // {
        //   "id": "102",
        //   "subejctId": "6",
        //   "question":
        //       "The Industrial Revolution in the 18th century led to the mechanization of industries and the emergence of new manufacturing processes. It brought about significant changes in society and the economy."
        //           "What was the main impact of the Industrial Revolution?",
        //   "A":
        //       "Shift from industrialized economies to agrarian-based economies",
        //   "B": "Introduction of new technologies and manufacturing processes",
        //   "C": "Increased reliance on agriculture",
        //   "D": " Decreased productivity in industries",
        //   "answer": "B"
        // },
        // {
        //   "id": "103",
        //   "subejctId": "6",
        //   "question":
        //       "Democracy is a system of government where power lies in the hands of the people. It emphasizes equality, freedom, and participation in decision-making processes."
        //           "What are the key principles of democracy?",
        //   "A": "Hierarchy and control",
        //   "B": "Equality and freedom",
        //   "C": "Suppression and censorship",
        //   "D": "Authoritarianism and dictatorship",
        //   "answer": "B"
        // },
        // {
        //   "id": "104",
        //   "subejctId": "6",
        //   "question":
        //       "Literature plays a crucial role in shaping societies and reflecting the human experience. It encompasses various forms such as novels, poetry, and drama."
        //           "What is the purpose of literature?",
        //   "A": "Entertainment only",
        //   "B": " Information sharing only",
        //   "C":
        //       "Reflection of human experience and exploration of different perspectives",
        //   "D": "Political propaganda",
        //   "answer": "C"
        // },
        // {
        //   "id": "105",
        //   "subejctId": "6",
        //   "question":
        //       "Globalization is the process of interconnectedness and integration among countries, facilitated by advancements in technology and communication."
        //           "What are some of the impacts of globalization?",
        //   "A": "Economic growth only",
        //   "B": "Cultural homogenization only",
        //   "C": "Both economic growth and cultural homogenization",
        //   "D": "Neither economic growth nor cultural homogenization",
        //   "answer": "C"
        // },
        // {
        //   "id": "106",
        //   "subejctId": "6",
        //   "question":
        //       "Education plays a crucial role in personal and societal development. It equips individuals with knowledge, skills, and values necessary for their growth and success."
        //           "What are the benefits of education?",
        //   "A": " Ignorance and stagnation",
        //   "B": "Social mobility and economic progress",
        //   "C": " Inequality and exclusion",
        //   "D": "Illiteracy and poverty",
        //   "answer": "B"
        // },
        // {
        //   "id": "107",
        //   "subejctId": "6",
        //   "question":
        //       "The Internet has revolutionized communication and transformed various aspects of our lives. It enables instant access to information, facilitates global connectivity, and provides platforms for social interaction."
        //           "What are some of the advantages of the Internet?",
        //   "A": "Limited access to information",
        //   "B": " Local connectivity only",
        //   "C": "Instant access to information and global connectivity",
        //   "D": "Privacy concerns and cyber threats",
        //   "answer": "C"
        // },
        // {
        //   "id": "108",
        //   "subejctId": "6",
        //   "question":
        //       "Ethics refers to a set of moral principles and values that guide human behavior."
        //           "What is the role of ethics?",
        //   "A": "Promoting immoral behavior",
        //   "B": "Justifying unethical actions",
        //   "C": " Guiding human behavior based on moral principles",
        //   "D": " Ignoring moral values",
        //   "answer": "C"
        // },
        // {
        //   "id": "109",
        //   "subejctId": "6",
        //   "question":
        //       "Poverty is a persistent social issue that affects millions of people worldwide. It is characterized by a lack of access to basic necessities such as food, shelter, and healthcare."
        //           "What are some of the consequences of poverty?",
        //   "A": "Social inequality and marginalization",
        //   "B": " Access to basic necessities",
        //   "C": "Prosperity and equality",
        //   "D": " Adequate healthcare and education",
        //   "answer": "A"
        // },
        // {
        //   "id": "110",
        //   "subejctId": "6",
        //   "question":
        //       "Human rights are inherent to all individuals, regardless of their race, gender, religion, or nationality."
        //           "What is the significance of human rights?",
        //   "A": "Exclusion and discrimination",
        //   "B": "Suppression of freedom",
        //   "C": " Protection of fundamental rights",
        //   "D": "Violation of individual liberties",
        //   "answer": "C"
        // },
        // {
        //   "id": "111",
        //   "subejctId": "6",
        //   "question":
        //       "Gender equality refers to the equal rights and opportunities for individuals, regardless of their gender."
        //           "What is the objective of gender equality?",
        //   "A": "Gender discrimination",
        //   "B": " Equal rights and opportunities",
        //   "C": "Gender stereotypes",
        //   "D": "Gender-based violence",
        //   "answer": "B"
        // },
        // {
        //   "id": "112",
        //   "subejctId": "6",
        //   "question":
        //       "Social justice aims to ensure fairness and equality in society, addressing issues such as poverty, inequality, and discrimination."
        //           "What is the goal of social justice?",
        //   "A": "Fairness and equality in society",
        //   "B": "Social unrest and conflict",
        //   "C": " Promoting discrimination",
        //   "D": "Perpetuating inequality",
        //   "answer": "A"
        // },
        // {
        //   "id": "113",
        //   "subejctId": "6",
        //   "question":
        //       "Sustainable development refers to a development approach that meets the needs of the present without compromising the ability of future generations to meet their own needs."
        //           "What is the importance of sustainable development?",
        //   "A": "Exploitation of natural resources",
        //   "B": "Preservation of the environment",
        //   "C": "Unsustainable practices",
        //   "D": " Economic growth at the expense of the environment",
        //   "answer": "B"
        // },
        // {
        //   "id": "114",
        //   "subejctId": "6",
        //   "question":
        //       "Public health focuses on promoting and protecting the health of populations, addressing issues such as disease prevention, health promotion, and healthcare accessibility."
        //           "What is the objective of public health?",
        //   "A": "Neglecting disease prevention",
        //   "B": "Limited healthcare accessibility",
        //   "C": "Promoting and protecting population health",
        //   "D": "Expanding healthcare disparities",
        //   "answer": "C"
        // },
        // {
        //   "id": "115",
        //   "subejctId": "6",
        //   "question":
        //       "Science and technology play a vital role in societal development, fostering innovation, and addressing various challenges."
        //           "What is the significance of science and technology?",
        //   "A": "Stagnation and lack of progress",
        //   "B": "Innovation and problem-solving",
        //   "C": "Technological limitations",
        //   "D": "Ignoring scientific advancements",
        //   "answer": "B"
        // },
        // {
        //   "id": "116",
        //   "subejctId": "6",
        //   "question":
        //       "Global terrorism poses a significant threat to global peace and security, characterized by acts of violence targeting innocent civilians."
        //           "What is the impact of global terrorism?",
        //   "A": " Preservation of global peace",
        //   "B": "Protection of human rights",
        //   "C": "Threat to global peace and security",
        //   "D": "Promoting peaceful coexistence",
        //   "answer": "C"
        // },
        // {
        //   "id": "117",
        //   "subejctId": "6",
        //   "question":
        //       "Political ideologies shape governments and their policies, influencing the socio-political landscape of a nation."
        //           "What is the role of political ideologies?",
        //   "A": "Suppressing political freedom",
        //   "B": "Promoting dictatorial regimes",
        //   "C": "Shaping government policies and socio-political landscape",
        //   "D": "Ignoring political systems",
        //   "answer": "C"
        // },
        // {
        //   "id": "118",
        //   "subejctId": "6",
        //   "question":
        //       "Media plays a crucial role in informing, educating, and shaping public opinion. It serves as a platform for communication and dissemination of information."
        //           "What is the significance of media?",
        //   "A": "Misinformation and propaganda",
        //   "B": "Informing and educating the public",
        //   "C": "Censorship and control",
        //   "D": "Suppression of freedom of speech",
        //   "answer": "B"
        // },
        // {
        //   "id": "119",
        //   "subejctId": "6",
        //   "question":
        //       "Humanitarian intervention aims to provide assistance and protection to individuals and communities affected by conflicts, natural disasters, and other crises."
        //           "What is the objective of humanitarian intervention?",
        //   "A": "Ignoring human suffering",
        //   "B": "Promoting conflict and instability",
        //   "C": "Assisting and protecting affected individuals and communities",
        //   "D": "Violating human rights",
        //   "answer": "C"
        // },
        // {
        //   "id": "120",
        //   "subejctId": "6",
        //   "question":
        //       "Corruption poses a significant challenge to governance and development, characterized by abuse of power and embezzlement of public funds."
        //           "What is the impact of corruption?",
        //   "A": "Transparency and accountability",
        //   "B": "Good governance practices",
        //   "C": "Economic growth and development",
        //   "D": " Misuse of public resources and hindrance to development",
        //   "answer": "D"
        // },
        // {
        //   "id": "121",
        //   "subejctId": "7",
        //   "question":
        //       "Effective communication is important in interpersonal interactions because it:",
        //   "A": "Enhances understanding and reduces conflicts",
        //   "B": "Promotes individualistic thinking",
        //   "C": " Encourages passive listening",
        //   "D": "Increases hierarchy in relationships",
        //   "answer": "A"
        // },
        // {
        //   "id": "122",
        //   "subejctId": "7",
        //   "question": "Active listening involves:",
        //   "A": "Focusing on one's own thoughts and opinions",
        //   "B": "Interrupting the speaker to share personal experiences",
        //   "C": "Showing indifference towards the speaker's feelings",
        //   "D": " Paying full attention and understanding the speaker's message",
        //   "answer": "D"
        // },
        // {
        //   "id": "123",
        //   "subejctId": "7",
        //   "question":
        //       "Empathy is an important interpersonal skill that involves:",
        //   "A": " Being assertive and dominant in conversations",
        //   "B": " Ignoring others' emotions and perspectives",
        //   "C": "Understanding and sharing others' emotions and experiences",
        //   "D": "Judging and criticizing others' actions",
        //   "answer": "C"
        // },
        // {
        //   "id": "124",
        //   "subejctId": "7",
        //   "question": "Nonverbal communication includes:",
        //   "A": "Speaking clearly and using appropriate language",
        //   "B": "Using body language, facial expressions, and gestures",
        //   "C": "Ignoring the speaker's verbal message",
        //   "D": "Disregarding the listener's feedback",
        //   "answer": "B"
        // },
        // {
        //   "id": "125",
        //   "subejctId": "7",
        //   "question": "Conflict resolution skills involve:",
        //   "A": "Ignoring conflicts and avoiding confrontation",
        //   "B": "Blaming others and holding grudges",
        //   "C":
        //       "Listening to others' perspectives and finding mutually acceptable solutions",
        //   "D": "Imposing one's own opinions and dominating the conversation",
        //   "answer": "C"
        // },
        // {
        //   "id": "126",
        //   "subejctId": "7",
        //   "question":
        //       "Assertiveness is an important interpersonal skill that involves:",
        //   "A": " Being aggressive and dominating in communication",
        //   "B":
        //       "Communicating one's needs and opinions with confidence and respect",
        //   "C": "Ignoring others' perspectives and opinions",
        //   "D": "Ignoring others' perspectives and opinions",
        //   "answer": "B"
        // },
        // {
        //   "id": "127",
        //   "subejctId": "7",
        //   "question": "Emotional intelligence refers to the ability to:",
        //   "A": "Control and suppress one's emotions",
        //   "B": "Avoid emotional connections in interpersonal relationships",
        //   "C": " Ignore others' emotions and feelings",
        //   "D": " Understand and manage one's own emotions and those of others",
        //   "answer": "D"
        // },
        // {
        //   "id": "128",
        //   "subejctId": "7",
        //   "question": "Feedback in communication is important because it:",
        //   "A": "Creates barriers in communication",
        //   "B": "Encourages misunderstandings and conflicts",
        //   "C": "Provides valuable information for improvement and growth",
        //   "D": "Leads to one-way communication",
        //   "answer": "C"
        // },
        // {
        //   "id": "129",
        //   "subejctId": "7",
        //   "question":
        //       "Conflict avoidance in interpersonal relationships may lead to:",
        //   "A": " Improved understanding and resolution of conflicts",
        //   "B": "Heightened conflicts and strained relationships",
        //   "C": "Enhanced communication and trust",
        //   "D": "Open and honest conversations",
        //   "answer": "B"
        // },
        // {
        //   "id": "130",
        //   "subejctId": "7",
        //   "question": "Effective teamwork requires:",
        //   "A": "Dominating and controlling team members",
        //   "B": "Lack of communication and collaboration",
        //   "C": " Clear communication, cooperation, and shared goals",
        //   "D": " Disregarding others' opinions and ideas",
        //   "answer": "C"
        // },
        // {
        //   "id": "131",
        //   "subejctId": "7",
        //   "question": "Cultural sensitivity in communication refers to:",
        //   "A": "Understanding and respecting cultural diversity",
        //   "B": "Ignoring cultural differences and norms",
        //   "C": "Imposing one's own cultural values on others",
        //   "D": "Being disrespectful towards other cultures",
        //   "answer": "A"
        // },
        // {
        //   "id": "132",
        //   "subejctId": "7",
        //   "question": "Conflict escalation can be prevented by:",
        //   "A": "Engaging in aggressive behavior and verbal attacks",
        //   "B": " Ignoring conflicts and avoiding conversations",
        //   "C": "Dominating and imposing one's own opinions",
        //   "D": "Active listening and empathetic communication",
        //   "answer": "D"
        // },
        // {
        //   "id": "133",
        //   "subejctId": "7",
        //   "question": "Interpersonal skills are important in:",
        //   "A": " Personal relationships only",
        //   "B": " Professional relationships only",
        //   "C": "Both personal and professional relationships",
        //   "D": "None of the above",
        //   "answer": "C"
        // },
        // {
        //   "id": "134",
        //   "subejctId": "7",
        //   "question": "Effective communication involves:",
        //   "A": "Using complex and technical language",
        //   "B":
        //       "Tailoring the message to the needs and understanding of the listener",
        //   "C": "Speaking at a fast pace without considering the listener",
        //   "D": "Ignoring nonverbal cues and body language",
        //   "answer": "B"
        // },
        // {
        //   "id": "135",
        //   "subejctId": "7",
        //   "question": "Conflict resolution involves:",
        //   "A": "Winning arguments and proving others wrong",
        //   "B": "Avoiding conflicts and staying silent",
        //   "C": "Imposing one's own decisions and disregarding others' opinions",
        //   "D":
        //       " Finding mutually acceptable solutions through dialogue and negotiation",
        //   "answer": "D"
        // },
        // {
        //   "id": "136",
        //   "subejctId": "7",
        //   "question":
        //       "Building rapport in interpersonal relationships involves:",
        //   "A": " Being distant and maintaining a formal attitude",
        //   "B": "Sharing personal information and experiences",
        //   "C": "Ignoring the feelings and emotions of others",
        //   "D": "Showing genuine interest, empathy, and understanding",
        //   "answer": "D"
        // },
        // {
        //   "id": "137",
        //   "subejctId": "7",
        //   "question": "The purpose of effective communication is to:",
        //   "A": "Confuse and mislead others",
        //   "B": " Manipulate and control others",
        //   "C":
        //       " Share information, ideas, and emotions clearly and respectfully",
        //   "D": "Dominate and impose one's own opinions on others",
        //   "answer": "C"
        // },
        // {
        //   "id": "138",
        //   "subejctId": "7",
        //   "question": "Trust and honesty are essential components of:",
        //   "A": "Effective communication",
        //   "B": " Aggressive behavior",
        //   "C": "Manipulative tactics",
        //   "D": "Passive listening",
        //   "answer": "A"
        // },
        // {
        //   "id": "139",
        //   "subejctId": "7",
        //   "question": "A supportive communication style involves:",
        //   "A": "Criticizing and belittling others' ideas",
        //   "B": "Encouraging and providing constructive feedback",
        //   "C": "Dominating and controlling conversations",
        //   "D": "Ignoring others' contributions",
        //   "answer": "B"
        // },
        // {
        //   "id": "140",
        //   "subejctId": "7",
        //   "question": "Interpersonal skills can be developed through:",
        //   "A": "Isolation and avoiding social interactions",
        //   "B": "Lack of self-awareness and self-reflection",
        //   "C": "Active listening, practice, and continuous learning",
        //   "D": "Imposing one's own opinions and perspectives on others",
        //   "answer": "C"
        // },
        // {
        //   "id": "141",
        //   "subejctId": "8",
        //   "question":
        //       "Which of the following is an example of deductive reasoning?",
        //   "A":
        //       "All cats are mammals. Garfield is a cat. Therefore, Garfield is a mammal.",
        //   "B": "Some dogs are brown. Spot is a dog. Therefore, Spot is brown.",
        //   "C":
        //       "All birds can fly. Penguins are birds. Therefore, penguins can fly.",
        //   "D":
        //       " All reptiles are cold-blooded. Snakes are reptiles. Therefore, snakes are cold-blooded.",
        //   "answer": "A"
        // },
        // {
        //   "id": "142",
        //   "subejctId": "8",
        //   "question":
        //       "In a sequence of numbers, if the difference between each pair of consecutive terms is the same, it is called a:",
        //   "A": "Arithmetic sequence",
        //   "B": " Geometric sequence",
        //   "C": "Fibonacci sequence",
        //   "D": "Quadratic sequence",
        //   "answer": "A"
        // },
        // {
        //   "id": "143",
        //   "subejctId": "8",
        //   "question":
        //       "A cube has six faces, each of which is painted with a different color. If the cube is cut into smaller cubes of equal size, how many small cubes will have at least one painted face?",
        //   "A": "6",
        //   "B": "9",
        //   "C": "12",
        //   "D": "8",
        //   "answer": "C"
        // },
        // {
        //   "id": "144",
        //   "subejctId": "8",
        //   "question":
        //       "If all cats are animals, and some animals are mammals, which of the following statements is true?",
        //   "A": " All cats are mammals",
        //   "B": "All mammals are cats",
        //   "C": "Some cats are mammals",
        //   "D": "No conclusion can be drawn",
        //   "answer": "C"
        // },
        // {
        //   "id": "145",
        //   "subejctId": "8",
        //   "question":
        //       "If A is taller than B, and B is taller than C, which of the following statements is true?",
        //   "A": " A is the tallest",
        //   "B": " B is the tallest",
        //   "C": " C is the tallest",
        //   "D": "No conclusion can be drawn",
        //   "answer": "D"
        // },
        // {
        //   "id": "146",
        //   "subejctId": "8",
        //   "question":
        //       "If 10 workers can complete a task in 8 hours, how many workers are needed to complete the same task in 4 hours?",
        //   "A": "5",
        //   "B": "10",
        //   "C": "20",
        //   "D": "40",
        //   "answer": "C"
        // },
        // {
        //   "id": "147",
        //   "subejctId": "8",
        //   "question":
        //       "If all roses are flowers, and some flowers are red, which of the following statements is true?",
        //   "A": "All roses are red",
        //   "B": "Some roses are red",
        //   "C": "No roses are red",
        //   "D": "No conclusion can be drawn",
        //   "answer": "B"
        // },
        // {
        //   "id": "148",
        //   "subejctId": "8",
        //   "question":
        //       "In a group of 100 people, 75 are women. If 60% of the women wear glasses, how many women in the group do not wear glasses?",
        //   "A": "15",
        //   "B": "25",
        //   "C": "30",
        //   "D": "45",
        //   "answer": "B"
        // },
        // {
        //   "id": "149",
        //   "subejctId": "8",
        //   "question":
        //       "If A implies B, and B implies C, which of the following statements is true?",
        //   "A": "A implies C",
        //   "B": "C implies A",
        //   "C": "A and C are equivalent",
        //   "D": "No conclusion can be drawn",
        //   "answer": "A"
        // },
        // {
        //   "id": "150",
        //   "subejctId": "8",
        //   "question":
        //       "If 'APPLE' is coded as 'ZOOKD', how would 'ORANGE' be coded?",
        //   "A": " NLZKRD",
        //   "B": "RJCPFD",
        //   "C": "NLKZRD",
        //   "D": "RJCFPD",
        //   "answer": "D"
        // },
        // {
        //   "id": "151",
        //   "subejctId": "8",
        //   "question":
        //       "In a certain code language, 'APPLE' is written as 'QRRSG'. What is the code for 'ORANGE'?",
        //   "A": "RQTPHF",
        //   "B": "QRRSGF",
        //   "C": "RQRRGJ",
        //   "D": "QRRPGF",
        //   "answer": "D"
        // },
        // {
        //   "id": "152",
        //   "subejctId": "8",
        //   "question":
        //       "If all books are papers, and some papers are pencils, which of the following statements is true?",
        //   "A": "All books are pencils",
        //   "B": "Some books are pencils",
        //   "C": "No books are pencils",
        //   "D": "No conclusion can be drawn",
        //   "answer": "D"
        // },
        // {
        //   "id": "153",
        //   "subejctId": "8",
        //   "question":
        //       "If A is to the left of B, and B is to the right of C, which of the following statements is true?",
        //   "A": "A is to the right of C",
        //   "B": "C is to the left of A",
        //   "C": "A and C are equidistant",
        //   "D": "No conclusion can be drawn",
        //   "answer": "D"
        // },
        // {
        //   "id": "154",
        //   "subejctId": "8",
        //   "question":
        //       "If all men are mortal, and Socrates is a man, which of the following statements is true?",
        //   "A": "Socrates is mortal",
        //   "B": "All mortals are Socrates",
        //   "C": "Socrates is immortal",
        //   "D": " No conclusion can be drawn",
        //   "answer": "A"
        // },
        // {
        //   "id": "155",
        //   "subejctId": "8",
        //   "question":
        //       "If 8 cats can catch 8 mice in 8 minutes, how many cats are needed to catch 64 mice in 8 minutes?",
        //   "A": "8",
        //   "B": "16",
        //   "C": "32",
        //   "D": "64",
        //   "answer": "A"
        // },
        // {
        //   "id": "156",
        //   "subejctId": "8",
        //   "question":
        //       "In a group of 50 students, 30 are boys. If 40% of the students are girls, how many girls are in the group?",
        //   "A": "10",
        //   "B": "15",
        //   "C": "20",
        //   "D": "25",
        //   "answer": "B"
        // },
        // {
        //   "id": "157",
        //   "subejctId": "8",
        //   "question":
        //       "If all dogs bark, and Rover is a dog, which of the following statements is true?",
        //   "A": "Rover barks",
        //   "B": "All barking animals are Rover",
        //   "C": "Rover does not bark",
        //   "D": "No conclusion can be drawn",
        //   "answer": "A"
        // },
        // {
        //   "id": "158",
        //   "subejctId": "8",
        //   "question":
        //       "If A is taller than B, and B is taller than C, which of the following statements is true?",
        //   "A": "A is the tallest",
        //   "B": "B is the tallest",
        //   "C": "C is the tallest",
        //   "D": "No conclusion can be drawn",
        //   "answer": "D"
        // },
        // {
        //   "id": "159",
        //   "subejctId": "8",
        //   "question":
        //       "If all birds can fly, and penguins are birds, which of the following statements is true?",
        //   "A": "All birds can swim",
        //   "B": " Penguins can fly",
        //   "C": " Penguins cannot fly",
        //   "D": "No conclusion can be drawn",
        //   "answer": "C"
        // },
        // {
        //   "id": "160",
        //   "subejctId": "8",
        //   "question":
        //       "If all dogs have tails, and Spot is a dog, which of the following statements is true?",
        //   "A": "Spot has a tail",
        //   "B": "All animals have tails",
        //   "C": "Spot does not have a tail",
        //   "D": "No conclusion can be drawn",
        //   "answer": "A"
        // },
        // {
        //   "id": "161",
        //   "subejctId": "9",
        //   "question":
        //       "Which of the following is an example of a structured decision-making process?",
        //   "A": "Intuitive decision making",
        //   "B": "Rational decision making",
        //   "C": " Emotional decision making",
        //   "D": " Impulsive decision making",
        //   "answer": "B"
        // },
        // {
        //   "id": "162",
        //   "subejctId": "9",
        //   "question":
        //       "When faced with a problem, the first step in problem-solving is:",
        //   "A": "Generating alternative solutions",
        //   "B": " Identifying the problem",
        //   "C": " Evaluating the solutions",
        //   "D": "Implementing the solution",
        //   "answer": "B"
        // },
        // {
        //   "id": "163",
        //   "subejctId": "9",
        //   "question":
        //       "Which of the following is a characteristic of a well-defined problem?",
        //   "A": "Multiple possible solutions",
        //   "B": "Unclear goals and objectives",
        //   "C": "Lack of available information",
        //   "D": "Clear problem statement",
        //   "answer": "D"
        // },
        // {
        //   "id": "164",
        //   "subejctId": "9",
        //   "question": "In decision making, SWOT analysis stands for:",
        //   "A": "Strengths, Weaknesses, Opportunities, Threats",
        //   "B": "Solutions, Weaknesses, Objectives, Tasks",
        //   "C": "Strengths, Weaknesses, Objectives, Targets",
        //   "D": "Solutions, Weaknesses, Opportunities, Targets",
        //   "answer": "A"
        // },
        // {
        //   "id": "165",
        //   "subejctId": "9",
        //   "question":
        //       "Which of the following is an example of a quantitative decision-making tool?",
        //   "A": "Decision matrix",
        //   "B": "Mind mapping",
        //   "C": "Fishbone diagram",
        //   "D": "Pareto chart",
        //   "answer": "A"
        // },
        // {
        //   "id": "166",
        //   "subejctId": "9",
        //   "question":
        //       "The Pareto principle, also known as the 80/20 rule, states that:",
        //   "A": "20% of the problems come from 80% of the causes",
        //   "B": "80% of the problems are solved with 20% of the effort",
        //   "C": "80% of the problems come from 20% of the causes",
        //   "D": "20% of the problems are solved with 80% of the effort",
        //   "answer": "C"
        // },
        // {
        //   "id": "167",
        //   "subejctId": "9",
        //   "question":
        //       "The Delphi method is a decision-making technique that involves:",
        //   "A": "Collecting opinions from a panel of experts",
        //   "B": "Conducting market research",
        //   "C": "Conducting surveys among the general public",
        //   "D": "Using statistical models to predict outcomes",
        //   "answer": "A"
        // },
        // {
        //   "id": "168",
        //   "subejctId": "9",
        //   "question": "The technique of brainstorming is used to:",
        //   "A": "Generate creative ideas",
        //   "B": " Evaluate alternative solutions",
        //   "C": " Implement decisions",
        //   "D": "Analyze problems",
        //   "answer": "A"
        // },
        // {
        //   "id": "169",
        //   "subejctId": "9",
        //   "question": "In decision making, a trade-off refers to:",
        //   "A": "Choosing the best option",
        //   "B": "Compromising between conflicting goals",
        //   "C": "Ignoring potential risks",
        //   "D": "Gathering more information",
        //   "answer": "B"
        // },
        // {
        //   "id": "170",
        //   "subejctId": "9",
        //   "question":
        //       "In the decision-making process, which of the following steps involves assessing the potential outcomes of each alternative?",
        //   "A": " Evaluating the alternatives",
        //   "B": "Implementing the decision",
        //   "C": "Identifying the problem",
        //   "D": "Generating alternative solutions",
        //   "answer": "A"
        // },
        // {
        //   "id": "171",
        //   "subejctId": "9",
        //   "question":
        //       "The process of making decisions based on past experiences and intuition is known as:",
        //   "A": "Rational decision making",
        //   "B": "Emotional decision making",
        //   "C": "Intuitive decision making",
        //   "D": "Analytical decision making",
        //   "answer": "C"
        // },
        // {
        //   "id": "172",
        //   "subejctId": "9",
        //   "question": "The 5 Whys technique is used to:",
        //   "A": "Identify the root cause of a problem",
        //   "B": "Determine the best alternative",
        //   "C": "Evaluate the potential outcomes",
        //   "D": " Implement the decision",
        //   "answer": "A"
        // },
        // {
        //   "id": "173",
        //   "subejctId": "9",
        //   "question": "The technique of root cause analysis aims to:",
        //   "A": " Identify the immediate causes of a problem",
        //   "B": "Evaluate the consequences of a decision",
        //   "C": "Identify the underlying causes of a problem",
        //   "D": "Determine the feasibility of alternative solutions",
        //   "answer": "C"
        // },
        // {
        //   "id": "174",
        //   "subejctId": "9",
        //   "question": "The method of using a decision matrix involves:",
        //   "A": "Assigning weights to different criteria",
        //   "B": "Listing alternative solutions",
        //   "C": "Assessing the potential outcomes",
        //   "D": "Implementing the chosen solution",
        //   "answer": "A"
        // },
        // {
        //   "id": "175",
        //   "subejctId": "9",
        //   "question": "The technique of cost-benefit analysis involves:",
        //   "A":
        //       "Comparing the advantages and disadvantages of different options",
        //   "B": "Assigning numerical values to decision criteria",
        //   "C": "Evaluating the financial implications of a decision",
        //   "D": "Assessing the potential risks and uncertainties",
        //   "answer": "A"
        // },
        // {
        //   "id": "176",
        //   "subejctId": "9",
        //   "question": "In decision making, a heuristic is:",
        //   "A": " A systematic approach to problem-solving",
        //   "B": "A mental shortcut or rule of thumb",
        //   "C": "A formal mathematical model",
        //   "D": "A decision-making tool",
        //   "answer": "B"
        // },
        // {
        //   "id": "177",
        //   "subejctId": "9",
        //   "question": "The technique of using decision trees involves:",
        //   "A": "Mapping out all possible decisions and their consequences",
        //   "B": "Analyzing historical data to predict future outcomes",
        //   "C": "Gathering opinions from a group of experts",
        //   "D": "Conducting experiments to test different alternatives",
        //   "answer": "A"
        // },
        // {
        //   "id": "178",
        //   "subejctId": "9",
        //   "question": "In decision making, risk analysis involves:",
        //   "A": "Assessing the probability and impact of potential risks",
        //   "B": "Gathering information from various sources",
        //   "C": "Prioritizing decision criteria",
        //   "D": "Implementing risk mitigation strategies",
        //   "answer": "A"
        // },
        // {
        //   "id": "179",
        //   "subejctId": "9",
        //   "question": "The technique of Monte Carlo simulation is used to:",
        //   "A": "Analyze financial data",
        //   "B": "Predict future outcomes based on historical data",
        //   "C": "Assess the sensitivity of decision variables",
        //   "D": "Evaluate the potential risks and uncertainties",
        //   "answer": "B"
        // },
        // {
        //   "id": "180",
        //   "subejctId": "10",
        //   "question": "In decision making, a sunk cost refers to:",
        //   "A": "A cost that cannot be recovered",
        //   "B": " The initial investment in a project",
        //   "C": "The potential benefits of a decision",
        //   "D": "The time and effort invested in decision making",
        //   "answer": "A"
        // },
        // {
        //   "id": "181",
        //   "subejctId": "10",
        //   "question":
        //       "What is the missing number in the following sequence? 2, 5, 10, 17, ?",
        //   "A": "21",
        //   "B": "24",
        //   "C": "28",
        //   "D": "32",
        //   "answer": "B"
        // },
        // {
        //   "id": "182",
        //   "subejctId": "10",
        //   "question":
        //       "If all the vowels in the word 'COMPUTER' are replaced with the next letter in the English alphabet and all the consonants are replaced with the previous letter, what will be the new word?",
        //   "A": "BNLTVFDS",
        //   "B": "DLNTVDFS",
        //   "C": "BNMTVDFS",
        //   "D": "DNMUVEFR",
        //   "answer": "D"
        // },
        // {
        //   "id": "183",
        //   "subejctId": "10",
        //   "question":
        //       "Which of the following words is different from the others?",
        //   "A": "Apple",
        //   "B": "Orange",
        //   "C": "Mango",
        //   "D": "Banana",
        //   "answer": "A"
        // },
        // {
        //   "id": "184",
        //   "subejctId": "10",
        //   "question":
        //       "In a certain code language, 'PAPER' is written as 'RECAP'. How is 'BREAD' written in that code?",
        //   "A": "CFSBE",
        //   "B": "CEREB",
        //   "C": "EBRCF",
        //   "D": "RCEBE",
        //   "answer": "C"
        // },
        // {
        //   "id": "185",
        //   "subejctId": "10",
        //   "question":
        //       "If 8 friends are sitting in a circle, how many handshakes will take place if each person shakes hands with every other person exactly once?",
        //   "A": "8",
        //   "B": "16",
        //   "C": "24",
        //   "D": "28",
        //   "answer": "C"
        // },
        // {
        //   "id": "186",
        //   "subejctId": "10",
        //   "question":
        //       "If 'CAT' is coded as 'FEX' using a certain pattern, what is the code for 'DOG'?",
        //   "A": "GRA",
        //   "B": "JRE",
        //   "C": "GRC",
        //   "D": "JEC",
        //   "answer": "A"
        // },
        // {
        //   "id": "187",
        //   "subejctId": "10",
        //   "question":
        //       "If A + B means 'A is the father of B,' A - B means 'A is the mother of B,' and A × B means 'A is the sister of B,' which of the following statements means 'P is the aunt of Q'?",
        //   "A": " P × S - Q",
        //   "B": " S - P + Q",
        //   "C": "P + Q - S",
        //   "D": "Q × P - S",
        //   "answer": "A"
        // },
        // {
        //   "id": "188",
        //   "subejctId": "10",
        //   "question":
        //       "Arrange the following words in alphabetical order: Elephant, Eagle, Elbow, Earlobe, Earth",
        //   "A": " Earth, Eagle, Elephant, Earlobe, Elbow",
        //   "B": "Eagle, Earth, Elephant, Elbow, Earlobe",
        //   "C": "Elbow, Earth, Elephant, Eagle, Earlobe",
        //   "D": "Eagle, Earlobe, Elbow, Earth, Elephant",
        //   "answer": "C"
        // },
        // {
        //   "id": "189",
        //   "subejctId": "10",
        //   "question":
        //       "What number comes next in the sequence? 2, 5, 10, 17, 26, ?",
        //   "A": "36",
        //   "B": "37",
        //   "C": "39",
        //   "D": "40",
        //   "answer": "B"
        // },
        // {
        //   "id": "190",
        //   "subejctId": "10",
        //   "question":
        //       "If LUCKNOW is coded as 19337304, how will BOMBAY be coded?",
        //   "A": "25032321",
        //   "B": "26142714",
        //   "C": "15091510",
        //   "D": "16212614",
        //   "answer": "B"
        // },
        // {
        //   "id": "191",
        //   "subejctId": "10",
        //   "question":
        //       "Find the missing number in the sequence: 5, 10, 20, 40, ?",
        //   "A": "60",
        //   "B": "80",
        //   "C": "90",
        //   "D": "100",
        //   "answer": "B"
        // },
        // {
        //   "id": "192",
        //   "subejctId": "10",
        //   "question":
        //       "Which of the following is an anagram of the word 'SCHOOL'?",
        //   "A": "CHOOLS",
        //   "B": "LOCOHS",
        //   "C": "LOCOHS",
        //   "D": "COHLOS",
        //   "answer": "C"
        // },
        // {
        //   "id": "193",
        //   "subejctId": "10",
        //   "question":
        //       "In a certain code language, 'HOSPITAL' is written as 'HPSOTAIL'. How is 'MACHINE' written in that code?",
        //   "A": "MCNAIHE",
        //   "B": "HECINAM",
        //   "C": "AHICNEM",
        //   "D": "NEMAHCI",
        //   "answer": "d"
        // },
        // {
        //   "id": "194",
        //   "subejctId": "10",
        //   "question":
        //       "A clock shows the time as 9:40. What will be the angle between the hour hand and the minute hand?",
        //   "A": " 120 degrees",
        //   "B": " 130 degrees",
        //   "C": " 140 degrees",
        //   "D": " 150 degrees",
        //   "answer": "c"
        // },
        // {
        //   "id": "195",
        //   "subejctId": "10",
        //   "question":
        //       "If all the digits in the number 8569243 are arranged in descending order, what will be the new number?",
        //   "A": "9867543",
        //   "B": "9876543",
        //   "C": "9765432",
        //   "D": "9876542",
        //   "answer": "B"
        // },
        // {
        //   "id": "196",
        //   "subejctId": "10",
        //   "question":
        //       "A is taller than B, B is taller than C, and C is taller than D. Who is the tallest?",
        //   "A": "A",
        //   "B": "B",
        //   "C": "C",
        //   "D": "D",
        //   "answer": "A"
        // },
        // {
        //   "id": "197",
        //   "subejctId": "10",
        //   "question": "Complete the analogy: 24 : 36 :: 40 : ?",
        //   "A": "54",
        //   "B": "60",
        //   "C": "64",
        //   "D": "80",
        //   "answer": "C"
        // },
        // {
        //   "id": "198",
        //   "subejctId": "10",
        //   "question": "How many squares are there in the following figure?",
        //   "A": "4",
        //   "B": "5",
        //   "C": "6",
        //   "D": "7",
        //   "answer": "B"
        // },
        // {
        //   "id": "199",
        //   "subejctId": "10",
        //   "question": "If A + B = 24 and A - B = 8, what is the value of A?",
        //   "A": "16",
        //   "B": "18",
        //   "C": "20",
        //   "D": "22",
        //   "answer": "C"
        // },
        // {
        //   "id": "200",
        //   "subejctId": "10",
        //   "question":
        //       "Which number does not belong to the following series? 2, 5, 8, 11, 14, 17, 20",
        //   "A": "5",
        //   "B": "11",
        //   "C": "14",
        //   "D": "20",
        //   "answer": "D"
        // },
        // {
        //   "id": "201",
        //   "subjectId": "11",
        //   "question": "Which of the following is the largest prime number?",
        //   "A": "17",
        //   "B": "23",
        //   "C": "29",
        //   "D": "31",
        //   "answer": "D"
        // },
        // {
        //   "id": "202",
        //   "subjectId": "11",
        //   "question": "What is the value of 5 × (6 + 2) - 4 ÷ 2?",
        //   "A": "43",
        //   "B": "44",
        //   "C": "45",
        //   "D": "46",
        //   "answer": "B"
        // },
        // {
        //   "id": "203",
        //   "subjectId": "11",
        //   "question": "What is the square root of 121?",
        //   "A": "9",
        //   "B": "10",
        //   "C": "11",
        //   "D": "12",
        //   "answer": "C"
        // },
        // {
        //   "id": "204",
        //   "subjectId": "11",
        //   "question": "Solve the equation: 2x + 5 = 15",
        //   "A": "x = 5",
        //   "B": "x = 7",
        //   "C": "x = 8",
        //   "D": "x = 10",
        //   "answer": "B"
        // },
        // {
        //   "id": "205",
        //   "subjectId": "11",
        //   "question": "What is 40% of 250?",
        //   "A": "100",
        //   "B": "120",
        //   "C": "150",
        //   "D": "200",
        //   "answer": "C"
        // },
        // {
        //   "id": "206",
        //   "subjectId": "11",
        //   "question": "Simplify: (8 - 4) × 3 ÷ 2 + 6",
        //   "A": "10",
        //   "B": "12",
        //   "C": "14",
        //   "D": "16",
        //   "answer": "D"
        // },
        // {
        //   "id": "207",
        //   "subjectId": "11",
        //   "question": "What is the value of (4² + 3³) ÷ 7 - 2?",
        //   "A": "4",
        //   "B": "5",
        //   "C": "6",
        //   "D": "7",
        //   "answer": "B"
        // },
        // {
        //   "id": "208",
        //   "subjectId": "11",
        //   "question": "Convert 0.75 into a fraction in simplest form.",
        //   "A": "3/4",
        //   "B": "2/3",
        //   "C": "1/2",
        //   "D": "1/4",
        //   "answer": "A"
        // },
        // {
        //   "id": "209",
        //   "subjectId": "11",
        //   "question":
        //       "If the sum of two numbers is 45 and one number is 28, what is the other number?",
        //   "A": "17",
        //   "B": "18",
        //   "C": "19",
        //   "D": "20",
        //   "answer": "A"
        // },
        // {
        //   "id": "210",
        //   "subjectId": "11",
        //   "question":
        //       "What is the next number in the series: 2, 5, 10, 17, 26, ?",
        //   "A": "35",
        //   "B": "36",
        //   "C": "37",
        //   "D": "38",
        //   "answer": "C"
        // },
        // {
        //   "id": "211",
        //   "subjectId": "11",
        //   "question":
        //       "If a car travels at a speed of 60 kilometers per hour, how far will it travel in 3 hours?",
        //   "A": "120 kilometers",
        //   "B": "160 kilometers",
        //   "C": "180 kilometers",
        //   "D": "200 kilometers",
        //   "answer": "B"
        // },
        // {
        //   "id": "212",
        //   "subjectId": "11",
        //   "question": "What is the value of 1/3 ÷ 1/5?",
        //   "A": "1/8",
        //   "B": "3/5",
        //   "C": "5/8",
        //   "D": "8/15",
        //   "answer": "D"
        // },
        // {
        //   "id": "213",
        //   "subjectId": "11",
        //   "question": "Solve the equation: 2x - 7 = 15",
        //   "A": "x = 6",
        //   "B": "x = 11",
        //   "C": "x = 16",
        //   "D": "x = 22",
        //   "answer": "B"
        // },
        // {
        //   "id": "214",
        //   "subjectId": "11",
        //   "question": "What is the result of 0.25 + 0.125?",
        //   "A": " 0.375",
        //   "B": "0.45",
        //   "C": "0.575",
        //   "D": "0.675",
        //   "answer": "A"
        // },
        // {
        //   "id": "215",
        //   "subjectId": "11",
        //   "question": "What is the product of -4 and -5?",
        //   "A": "-9",
        //   "B": "10",
        //   "C": "20",
        //   "D": "-20",
        //   "answer": "C"
        // },
        // {
        //   "id": "216",
        //   "subjectId": "11",
        //   "question":
        //       "A shopkeeper sells a watch for \$250, making a profit of 25%. What is the cost price of the watch?",
        //   "A": "\$150",
        //   "B": "\$200",
        //   "C": "\$225",
        //   "D": "\$300",
        //   "answer": "B"
        // },
        // {
        //   "id": "217",
        //   "subjectId": "11",
        //   "question": "What is the next prime number after 31?",
        //   "A": "33",
        //   "B": "37",
        //   "C": "39",
        //   "D": "41",
        //   "answer": "D"
        // },
        // {
        //   "id": "218",
        //   "subjectId": "11",
        //   "question":
        //       "Find the missing number in the sequence: 2, 6, 12, 20, ?",
        //   "A": "24",
        //   "B": "28",
        //   "C": "32",
        //   "D": "36",
        //   "answer": "C"
        // },
        // {
        //   "id": "219",
        //   "subjectId": "11",
        //   "question": "Solve the equation: 3(x + 4) = 27",
        //   "A": "x = 3",
        //   "B": "x = 5",
        //   "C": "x = 7",
        //   "D": "x = 9",
        //   "answer": "C"
        // },
        // {
        //   "id": "220",
        //   "subjectId": "11",
        //   "question": "What is the value of 2³ × 3²?",
        //   "A": "18",
        //   "B": "24",
        //   "C": "36",
        //   "D": "72",
        //   "answer": "D"
        // },
        // {
        //   "id": "221",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is the primary sector of the economy?",
        //   "A": " Agriculture",
        //   "B": "Manufacturing",
        //   "C": "Services",
        //   "D": "Technology",
        //   "answer": "A"
        // },
        // {
        //   "id": "222",
        //   "subjectId": "12",
        //   "question": "Which of the following is a major staple crop in India?",
        //   "A": "Wheat",
        //   "B": "Coffee",
        //   "C": "Tea",
        //   "D": "Rubber",
        //   "answer": "A"
        // },
        // {
        //   "id": "223",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is an example of organic farming?",
        //   "A": "Use of chemical fertilizers",
        //   "B": "Use of genetically modified seeds",
        //   "C": "Use of natural compost",
        //   "D": "Use of synthetic pesticides",
        //   "answer": "C"
        // },
        // {
        //   "id": "224",
        //   "subjectId": "12",
        //   "question": "Which of the following is a Green Revolution crop?",
        //   "A": "Jowar (Sorghum)",
        //   "B": "Pulses",
        //   "C": "Millets",
        //   "D": "Barley",
        //   "answer": "A"
        // },
        // {
        //   "id": "225",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is a method of sustainable agriculture?",
        //   "A": "Monocropping",
        //   "B": "Intensive irrigation",
        //   "C": "Crop rotation",
        //   "D": "Excessive pesticide use",
        //   "answer": "C"
        // },
        // {
        //   "id": "226",
        //   "subjectId": "12",
        //   "question":
        //       "What is the process of breeding crops for desired traits called?",
        //   "A": "Hybridization",
        //   "B": "Fertilization",
        //   "C": "Photosynthesis",
        //   "D": "Transpiration",
        //   "answer": "A"
        // },
        // {
        //   "id": "227",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is a traditional farming practice in hilly areas?",
        //   "A": "Contour plowing",
        //   "B": "Terrace farming",
        //   "C": "Crop rotation",
        //   "D": "Mulching",
        //   "answer": "B"
        // },
        // {
        //   "id": "228",
        //   "subjectId": "12",
        //   "question": "Which of the following is a major cash crop in India?",
        //   "A": "Wheat",
        //   "B": "Rice",
        //   "C": "Cotton",
        //   "D": "Maize",
        //   "answer": "C"
        // },
        // {
        //   "id": "229",
        //   "subjectId": "12",
        //   "question":
        //       "What is the process of drying and storing harvested crops called?",
        //   "A": "Harvesting",
        //   "B": "Threshing",
        //   "C": "Winnowing",
        //   "D": "Storage",
        //   "answer": "D"
        // },
        // {
        //   "id": "230",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is an example of precision agriculture technology?",
        //   "A": "Drip irrigation",
        //   "B": "Greenhouse farming",
        //   "C": "Satellite-based crop monitoring",
        //   "D": "Crop rotation",
        //   "answer": "C"
        // },
        // {
        //   "id": "231",
        //   "subjectId": "12",
        //   "question": "Which of the following is an example of agroforestry?",
        //   "A": "Growing crops on terraced fields",
        //   "B": "Planting trees in pasturelands",
        //   "C": "Cultivating genetically modified crops",
        //   "D": "Using high-yield seeds",
        //   "answer": "B"
        // },
        // {
        //   "id": "232",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is a method of organic pest control?",
        //   "A": "Use of chemical pesticides",
        //   "B": "Biological control using beneficial insects",
        //   "C": "Genetically modifying crops to resist pests",
        //   "D": "Soil sterilization",
        //   "answer": "B"
        // },
        // {
        //   "id": "233",
        //   "subjectId": "12",
        //   "question":
        //       "What is the process of converting organic waste into nutrient-rich compost called?",
        //   "A": "Vermicomposting",
        //   "B": "Incineration",
        //   "C": "Landfilling",
        //   "D": "Mulching",
        //   "answer": "A"
        // },
        // {
        //   "id": "234",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is a method of soil conservation?",
        //   "A": "Overgrazing",
        //   "B": "Deforestation",
        //   "C": "Contour plowing",
        //   "D": "Excessive tilling",
        //   "answer": "C"
        // },
        // {
        //   "id": "235",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is a major agricultural season in India?",
        //   "A": "Winter season",
        //   "B": "Monsoon season",
        //   "C": "Spring season",
        //   "D": "Autumn season",
        //   "answer": "B"
        // },
        // {
        //   "id": "236",
        //   "subjectId": "12",
        //   "question":
        //       "What is the process of removing undesirable plants from a cultivated area called?",
        //   "A": "Irrigation",
        //   "B": "Fertilization",
        //   "C": "Weeding",
        //   "D": "Pruning",
        //   "answer": "C"
        // },
        // {
        //   "id": "237",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is an example of organic farming certification in India?",
        //   "A": "FSSAI",
        //   "B": "ISO",
        //   "C": "APEDA",
        //   "D": "NPOP",
        //   "answer": "D"
        // },
        // {
        //   "id": "238",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is a method of water conservation in agriculture?",
        //   "A": "Flood irrigation",
        //   "B": "Sprinkler irrigation",
        //   "C": "Overhead irrigation",
        //   "D": "Surface irrigation",
        //   "answer": "B"
        // },
        // {
        //   "id": "239",
        //   "subjectId": "12",
        //   "question":
        //       "What is the process of separating grain from harvested crop called?",
        //   "A": "Harvesting",
        //   "B": "Threshing",
        //   "C": "Winnowing",
        //   "D": "Sowing",
        //   "answer": "B"
        // },
        // {
        //   "id": "240",
        //   "subjectId": "12",
        //   "question":
        //       "Which of the following is an example of agricultural subsidy in India?",
        //   "A": "Minimum support price",
        //   "B": "Export promotion",
        //   "C": "Privatization of farms",
        //   "D": "Import restrictions",
        //   "answer": "A"
        // },
        // {
        //   "id": "241",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is the study of breeding and care of domesticated animals?",
        //   "A": "Animal physiology",
        //   "B": "Animal husbandry",
        //   "C": "Animal behavior",
        //   "D": "Animal nutrition",
        //   "answer": "B"
        // },
        // {
        //   "id": "242",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following diseases affects cattle and is caused by a virus?",
        //   "A": "Avian influenza",
        //   "B": "Foot and mouth disease",
        //   "C": "Brucellosis",
        //   "D": "Swine flu",
        //   "answer": "B"
        // },
        // {
        //   "id": "243",
        //   "subjectId": "13",
        //   "question":
        //       "What is the process of artificially inseminating female animals called?",
        //   "A": "Embryo transfer",
        //   "B": "Cloning",
        //   "C": "In vitro fertilization",
        //   "D": "Artificial insemination",
        //   "answer": "D"
        // },
        // {
        //   "id": "244",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a method of controlling parasites in livestock?",
        //   "A": "Vaccination",
        //   "B": "Antibiotics",
        //   "C": "Deworming",
        //   "D": "Genetic modification",
        //   "answer": "C"
        // },
        // {
        //   "id": "245",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a common mineral deficiency in livestock?",
        //   "A": " Iron deficiency",
        //   "B": "Calcium deficiency",
        //   "C": "Vitamin D deficiency",
        //   "D": "Potassium deficiency",
        //   "answer": "B"
        // },
        // {
        //   "id": "246",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is an example of intensive animal farming?",
        //   "A": "Free-range farming",
        //   "B": "Organic farming",
        //   "C": "Factory farming",
        //   "D": "Sustainable farming",
        //   "answer": "C"
        // },
        // {
        //   "id": "247",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a method of preventing diseases in animals?",
        //   "A": "Quarantine",
        //   "B": "Antibiotic administration",
        //   "C": "Genetic modification",
        //   "D": "Hormone therapy",
        //   "answer": "A"
        // },
        // {
        //   "id": "248",
        //   "subjectId": "13",
        //   "question":
        //       "What is the process of removing the horns of livestock called?",
        //   "A": "Dehorning",
        //   "B": "Docking",
        //   "C": "Castration",
        //   "D": "Dipping",
        //   "answer": "A"
        // },
        // {
        //   "id": "249",
        //   "subjectId": "13",
        //   "question": "Which of the following is a zoonotic disease?",
        //   "A": "Bovine spongiform encephalopathy",
        //   "B": "Mastitis",
        //   "C": "Ovine foot rot",
        //   "D": "Equine influenza",
        //   "answer": "A"
        // },
        // {
        //   "id": "250",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a method of animal identification?",
        //   "A": "Microchipping",
        //   "B": "Ear tagging",
        //   "C": "Branding",
        //   "D": "All of the above",
        //   "answer": "D"
        // },
        // {
        //   "id": "251",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a livestock breeding technique that involves crossing different breeds?",
        //   "A": "Inbreeding",
        //   "B": " Line breeding",
        //   "C": "Outbreeding",
        //   "D": "Grading up",
        //   "answer": "C"
        // },
        // {
        //   "id": "252",
        //   "subjectId": "13",
        //   "question":
        //       "What is the process of providing controlled feed and nutrition to livestock called?",
        //   "A": "Grazing",
        //   "B": "Pasturing",
        //   "C": "Rationing",
        //   "D": "Foraging",
        //   "answer": "C"
        // },
        // {
        //   "id": "253",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a common viral disease in poultry?",
        //   "A": "Blue tongue disease",
        //   "B": "Newcastle disease",
        //   "C": " Johne's disease",
        //   "D": "Brucellosis",
        //   "answer": "B"
        // },
        // {
        //   "id": "254",
        //   "subjectId": "13",
        //   "question":
        //       "What is the process of trimming the hooves of livestock called?",
        //   "A": "Dehorning",
        //   "B": "Dipping",
        //   "C": "Docking",
        //   "D": "Hoof trimming",
        //   "answer": "D"
        // },
        // {
        //   "id": "255",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is an example of a dual-purpose breed of livestock?",
        //   "A": "Jersey cattle",
        //   "B": "Suffolk sheep",
        //   "C": "Duroc pigs",
        //   "D": " Nubian goats",
        //   "answer": "D"
        // },
        // {
        //   "id": "256",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a method of artificial incubation in poultry farming?",
        //   "A": "Natural incubation",
        //   "B": "Brooding",
        //   "C": "Incubator machines",
        //   "D": "Hatcheries",
        //   "answer": "C"
        // },
        // {
        //   "id": "257",
        //   "subjectId": "13",
        //   "question":
        //       "What is the process of providing shelter and housing to livestock called?",
        //   "A": "Grazing",
        //   "B": "Pasturing",
        //   "C": "Stall-feeding",
        //   "D": "Housing",
        //   "answer": "D"
        // },
        // {
        //   "id": "258",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a common bacterial disease in cattle?",
        //   "A": "Tuberculosis",
        //   "B": "Foot rot",
        //   "C": "Brucellosis",
        //   "D": "Swine flu",
        //   "answer": "A"
        // },
        // {
        //   "id": "259",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a method of artificial rearing of young animals?",
        //   "A": "Colostrum feeding",
        //   "B": "Bottle feeding",
        //   "C": "Creep feeding",
        //   "D": "All of the above",
        //   "answer": "D"
        // },
        // {
        //   "id": "260",
        //   "subjectId": "13",
        //   "question":
        //       "Which of the following is a method of livestock waste management?",
        //   "A": "Composting",
        //   "B": "Incineration",
        //   "C": " Anaerobic digestion",
        //   "D": "All of the above",
        //   "answer": "D"
        // },
        // {
        //   "id": "261",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human beings in their cultural, social, and biological aspects?",
        //   "A": "Sociology",
        //   "B": "Anthropology",
        //   "C": "Psychology",
        //   "D": "Archaeology",
        //   "answer": "B"
        // },
        // {
        //   "id": "262",
        //   "subjectId": "14",
        //   "question":
        //       "Which subfield of anthropology focuses on the study of human evolution and biological diversity?",
        //   "A": "Cultural anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Physical anthropology",
        //   "D": "Archaeology",
        //   "answer": "C"
        // },
        // {
        //   "id": "263",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human language and communication?",
        //   "A": "Cultural anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Physical anthropology",
        //   "D": "Archaeology",
        //   "answer": "B"
        // },
        // {
        //   "id": "264",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the systematic study of past human cultures through their material remains?",
        //   "A": "Ethnography",
        //   "B": "Ethnology",
        //   "C": "Archaeology",
        //   "D": "Paleontology",
        //   "answer": "C"
        // },
        // {
        //   "id": "265",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the branch of anthropology that focuses on the study of contemporary human cultures?",
        //   "A": "Cultural anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Physical anthropology",
        //   "D": "Archaeology",
        //   "answer": "A"
        // },
        // {
        //   "id": "266",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the study of human customs, beliefs, and social practices?",
        //   "A": "Ethnography",
        //   "B": "Ethnology",
        //   "C": "Archaeology",
        //   "D": "Paleontology",
        //   "answer": "A"
        // },
        // {
        //   "id": "267",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human remains to determine information about past populations?",
        //   "A": "Forensic anthropology",
        //   "B": "Biological anthropology",
        //   "C": "Ethnography",
        //   "D": "Ethnology",
        //   "answer": "B"
        // },
        // {
        //   "id": "268",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the term for the process by which cultural traits are passed from one generation to another?",
        //   "A": "Assimilation",
        //   "B": "Acculturation",
        //   "C": "Enculturation",
        //   "D": "Cultural relativism",
        //   "answer": "C"
        // },
        // {
        //   "id": "269",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human genetic variation and its impact on human health?",
        //   "A": "Medical anthropology",
        //   "B": "Forensic anthropology",
        //   "C": "Primatology",
        //   "D": "Paleoanthropology",
        //   "answer": "A"
        // },
        // {
        //   "id": "270",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human societies and social structures?",
        //   "A": "Cultural anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Physical anthropology",
        //   "D": "Ethnology",
        //   "answer": "D"
        // },
        // {
        //   "id": "271",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the exchange of cultural traits between different societies?",
        //   "A": "Assimilation",
        //   "B": "Acculturation",
        //   "C": "Enculturation",
        //   "D": "Cultural relativism",
        //   "answer": "B"
        // },
        // {
        //   "id": "272",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of primate behavior, ecology, and evolution?",
        //   "A": "Primatology",
        //   "B": " Forensic anthropology",
        //   "C": "Human paleontology",
        //   "D": "Cultural anthropology",
        //   "answer": "A"
        // },
        // {
        //   "id": "273",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the practice of judging other cultures based on the values and standards of one's own culture?",
        //   "A": "Cultural relativism",
        //   "B": "Ethnocentrism",
        //   "C": "Multiculturalism",
        //   "D": "Diffusionism",
        //   "answer": "B"
        // },
        // {
        //   "id": "274",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human fossil remains and their interpretation?",
        //   "A": " Forensic anthropology",
        //   "B": "Physical anthropology",
        //   "C": "Archaeology",
        //   "D": "Medical anthropology",
        //   "answer": "B"
        // },
        // {
        //   "id": "275",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the belief that all cultural practices are equally valid and should be understood within their own cultural context?",
        //   "A": "Cultural relativism",
        //   "B": "Ethnocentrism",
        //   "C": "Multiculturalism",
        //   "D": "Diffusionism",
        //   "answer": "A"
        // },
        // {
        //   "id": "276",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human population genetics and the distribution of genetic traits?",
        //   "A": "Molecular anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Medical anthropology",
        //   "D": "Archaeology",
        //   "answer": "A"
        // },
        // {
        //   "id": "277",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the study of human evolution and the fossil record?",
        //   "A": "Forensic anthropology",
        //   "B": "Physical anthropology",
        //   "C": "Human paleontology",
        //   "D": "Cultural anthropology",
        //   "answer": "C"
        // },
        // {
        //   "id": "278",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of the relationship between language and culture?",
        //   "A": "Cultural anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Physical anthropology",
        //   "D": "Ethnology",
        //   "answer": "B"
        // },
        // {
        //   "id": "279",
        //   "subjectId": "14",
        //   "question":
        //       "What is the term for the study of the development of human societies and civilizations?",
        //   "A": "Cultural anthropology",
        //   "B": "Linguistic anthropology",
        //   "C": "Archaeology",
        //   "D": "Ethnography",
        //   "answer": "C"
        // },
        // {
        //   "id": "280",
        //   "subjectId": "14",
        //   "question":
        //       "Which of the following is the study of human adaptation to the environment?",
        //   "A": "Human paleontology",
        //   "B": "Primatology",
        //   "C": "Human ecology",
        //   "D": "Medical anthropology",
        //   "answer": "C"
        // },
        // {
        //   "id": "281",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the primary pigment responsible for photosynthesis in plants?",
        //   "A": "Chlorophyll",
        //   "B": "Carotenoids",
        //   "C": "Anthocyanins",
        //   "D": "Phycobilins",
        //   "answer": "A"
        // },
        // {
        //   "id": "282",
        //   "subjectId": "15",
        //   "question":
        //       "Which tissue is responsible for the conduction of water and nutrients in plants?",
        //   "A": "Epidermis",
        //   "B": "Xylem",
        //   "C": "Phloem",
        //   "D": "Meristem",
        //   "answer": "B"
        // },
        // {
        //   "id": "283",
        //   "subjectId": "15",
        //   "question":
        //       "What is the process by which plants convert light energy into chemical energy during photosynthesis?",
        //   "A": "Transpiration",
        //   "B": "Respiration",
        //   "C": "Fermentation",
        //   "D": "Carbon fixation",
        //   "answer": "D"
        // },
        // {
        //   "id": "284",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the reproductive structure of a flower?",
        //   "A": "Petal",
        //   "B": "Sepal",
        //   "C": "Stamen",
        //   "D": "Pistil",
        //   "answer": "D"
        // },
        // {
        //   "id": "285",
        //   "subjectId": "15",
        //   "question": "What is the function of stomata in plants?",
        //   "A": "Photosynthesis",
        //   "B": "Transpiration",
        //   "C": "Gas exchange",
        //   "D": "Water absorption",
        //   "answer": "C"
        // },
        // {
        //   "id": "286",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which plants bend or grow towards a source of light?",
        //   "A": "Phototropism",
        //   "B": "Gravitropism",
        //   "C": "Thigmotropism",
        //   "D": "Hydrotropism",
        //   "answer": "A"
        // },
        // {
        //   "id": "287",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is a nitrogen-fixing bacterium that forms a symbiotic relationship with leguminous plants?",
        //   "A": "Rhizobium",
        //   "B": "Azotobacter",
        //   "C": "Frankia",
        //   "D": "Mycorrhiza",
        //   "answer": "A"
        // },
        // {
        //   "id": "288",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which pollen is transferred from the anther to the stigma of a flower?",
        //   "A": "Pollination",
        //   "B": "Fertilization",
        //   "C": "Germination",
        //   "D": "Embryogenesis",
        //   "answer": "A"
        // },
        // {
        //   "id": "289",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the male reproductive structure of a flower?",
        //   "A": "Petal",
        //   "B": "Sepal",
        //   "C": "Stamen",
        //   "D": "Pistil",
        //   "answer": "C"
        // },
        // {
        //   "id": "290",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which plants release excess water vapor through their leaves?",
        //   "A": "Transpiration",
        //   "B": "Respiration",
        //   "C": "Photosynthesis",
        //   "D": "Germination",
        //   "answer": "A"
        // },
        // {
        //   "id": "291",
        //   "subjectId": "1",
        //   "question":
        //       "Which of the following is the storage carbohydrate in plants?",
        //   "A": "Starch",
        //   "B": "Cellulose",
        //   "C": "Glycogen",
        //   "D": "Chitin",
        //   "answer": "A"
        // },
        // {
        //   "id": "292",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which plants produce new individuals from their vegetative parts?",
        //   "A": "Reproduction",
        //   "B": "Propagation",
        //   "C": "Germination",
        //   "D": "Fertilization",
        //   "answer": "B"
        // },
        // {
        //   "id": "293",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the outermost layer of a plant cell that provides protection and regulates water loss?",
        //   "A": "Cell wall",
        //   "B": "Cell membrane",
        //   "C": "Nucleus",
        //   "D": "Vacuole",
        //   "answer": "A"
        // },
        // {
        //   "id": "294",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which plants release oxygen as a byproduct of photosynthesis?",
        //   "A": "Respiration",
        //   "B": "Fermentation",
        //   "C": "Oxidation",
        //   "D": "Oxygenation",
        //   "answer": "A"
        // },
        // {
        //   "id": "295",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the process of seed development and maturation?",
        //   "A": "Fertilization",
        //   "B": "Germination",
        //   "C": "Embryogenesis",
        //   "D": "Ripening",
        //   "answer": "C"
        // },
        // {
        //   "id": "296",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which plants bend or grow in response to touch or contact?",
        //   "A": "Phototropism",
        //   "B": "Gravitropism",
        //   "C": "Thigmotropism",
        //   "D": "Hydrotropism",
        //   "answer": "C"
        // },
        // {
        //   "id": "297",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the female reproductive structure of a flower?",
        //   "A": "Petal",
        //   "B": "Sepal",
        //   "C": "Stamen",
        //   "D": "Pistil",
        //   "answer": "D"
        // },
        // {
        //   "id": "298",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the process by which plants convert stored energy into usable energy for growth and development?",
        //   "A": "Photosynthesis",
        //   "B": "Respiration",
        //   "C": "Fermentation",
        //   "D": "Carbon fixation",
        //   "answer": "B"
        // },
        // {
        //   "id": "299",
        //   "subjectId": "15",
        //   "question":
        //       "Which of the following is the main pigment responsible for the red, orange, and yellow colors in plants?",
        //   "A": "Chlorophyll",
        //   "B": "Carotenoids",
        //   "C": "Anthocyanins",
        //   "D": "Phycobilins",
        //   "answer": "B"
        // },
        // {
        //   "id": "300",
        //   "subjectId": "15",
        //   "question":
        //       "What is the term for the protective layer that covers the growing tip of a root?",
        //   "A": "Root hair",
        //   "B": "Root cap",
        //   "C": "Root cortex",
        //   "D": "Root epidermis",
        //   "answer": "B"
        // },
        // {
        //   "id": "301",
        //   "sibjectId": "16",
        //   "question": "Which of the following is a noble gas?",
        //   "A": "Oxygen",
        //   "B": "Hydrogen",
        //   "C": "Helium",
        //   "D": "Carbon",
        //   "answer": "C"
        // },
        // {
        //   "id": "302",
        //   "sibjectId": "16",
        //   "question":
        //       "The process of converting a solid directly into a gas without passing through the liquid state is called:",
        //   "A": "Condensation",
        //   "B": "Sublimation",
        //   "C": "Evaporation",
        //   "D": "Melting",
        //   "answer": "B"
        // },
        // {
        //   "id": "303",
        //   "sibjectId": "16",
        //   "question": "Which of the following is the lightest gas?",
        //   "A": "Hydrogen",
        //   "B": "Oxygen",
        //   "C": "Nitrogen",
        //   "D": "Helium",
        //   "answer": "A"
        // },
        // {
        //   "id": "304",
        //   "sibjectId": "16",
        //   "question": "Which of the following elements is a metalloid?",
        //   "A": "Sodium",
        //   "B": "Calcium",
        //   "C": "Silicon",
        //   "D": "Phosphorus",
        //   "answer": "C"
        // },
        // {
        //   "id": "305",
        //   "sibjectId": "16",
        //   "question": "The chemical formula of water is:",
        //   "A": "H2O2",
        //   "B": "CO2",
        //   "C": "H2O",
        //   "D": "CH4",
        //   "answer": "C"
        // },
        // {
        //   "id": "306",
        //   "sibjectId": "16",
        //   "question": "The pH of a neutral solution is:",
        //   "A": "7",
        //   "B": "10",
        //   "C": "14",
        //   "D": "0",
        //   "answer": "A"
        // },
        // {
        //   "id": "307",
        //   "sibjectId": "16",
        //   "question": "Which gas is responsible for the greenhouse effect?",
        //   "A": "Oxygen",
        //   "B": "Nitrogen",
        //   "C": "Carbon dioxide",
        //   "D": "Helium",
        //   "answer": "C"
        // },
        // {
        //   "id": "308",
        //   "sibjectId": "16",
        //   "question": "Which of the following is a halogen element?",
        //   "A": "Sodium",
        //   "B": "Chlorine",
        //   "C": "Potassium",
        //   "D": "Calcium",
        //   "answer": "B"
        // },
        // {
        //   "id": "309",
        //   "sibjectId": "16",
        //   "question": "The chemical symbol for gold is:",
        //   "A": "Au",
        //   "B": "Ag",
        //   "C": "Fe",
        //   "D": "Cu",
        //   "answer": "A"
        // },
        // {
        //   "id": "310",
        //   "sibjectId": "16",
        //   "question": "Which gas is responsible for causing acid rain?",
        //   "A": "Carbon dioxide",
        //   "B": "Nitrogen",
        //   "C": "Sulfur dioxide",
        //   "D": "Oxygen",
        //   "answer": "C"
        // },
        // {
        //   "id": "311",
        //   "sibjectId": "16",
        //   "question":
        //       "Which of the following is the main constituent of natural gas?",
        //   "A": "Methane",
        //   "B": "Ethane",
        //   "C": "Propane",
        //   "D": "Butane",
        //   "answer": "A"
        // },
        // {
        //   "id": "312",
        //   "sibjectId": "16",
        //   "question":
        //       "The process of converting a liquid into a gas at the surface of the liquid is called:",
        //   "A": "Condensation",
        //   "B": "Sublimation",
        //   "C": "Evaporation",
        //   "D": "Melting",
        //   "answer": "C"
        // },
        // {
        //   "id": "313",
        //   "sibjectId": "16",
        //   "question": "Which of the following elements is a non-metal?",
        //   "A": "Sodium",
        //   "B": "Calcium",
        //   "C": "Oxygen",
        //   "D": "Iron",
        //   "answer": "C"
        // },
        // {
        //   "id": "314",
        //   "sibjectId": "16",
        //   "question": "The chemical formula of methane is:",
        //   "A": "CH4",
        //   "B": "CO2",
        //   "C": "H2O",
        //   "D": "C6H12O6",
        //   "answer": "A"
        // },
        // {
        //   "id": "315",
        //   "sibjectId": "16",
        //   "question": "Which gas is released during photosynthesis?",
        //   "A": " Carbon dioxide",
        //   "B": "Oxygen",
        //   "C": "Nitrogen",
        //   "D": "Hydrogen",
        //   "answer": "B"
        // },
        // {
        //   "id": "316",
        //   "sibjectId": "16",
        //   "question": "The chemical symbol for silver is:",
        //   "A": "Ag",
        //   "B": "Au",
        //   "C": "Fe",
        //   "D": "Cu",
        //   "answer": "A"
        // },
        // {
        //   "id": "317",
        //   "sibjectId": "16",
        //   "question": "Which gas is used for extinguishing fires?",
        //   "A": "Carbon dioxide",
        //   "B": "Nitrogen",
        //   "C": "Oxygen",
        //   "D": "Helium",
        //   "answer": "A"
        // },
        // {
        //   "id": "318",
        //   "sibjectId": "16",
        //   "question":
        //       "The process of converting a gas into a liquid is called:",
        //   "A": "Condensation",
        //   "B": "Sublimation",
        //   "C": "Evaporation",
        //   "D": "Melting",
        //   "answer": "C"
        // },
        // {
        //   "id": "319",
        //   "sibjectId": "16",
        //   "question": "Which gas is used in balloons for lifting them up?",
        //   "A": "Oxygen",
        //   "B": "Hydrogen",
        //   "C": "Nitrogen",
        //   "D": "Helium",
        //   "answer": "B"
        // },
        // {
        //   "id": "320",
        //   "sibjectId": "16",
        //   "question": "The chemical formula of carbon dioxide is:",
        //   "A": "CO2",
        //   "B": "CH4",
        //   "C": "H2O",
        //   "D": "O2",
        //   "answer": "A"
        // },
        // {
        //   "id": "321",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of adding cement and water to a mixture of sand and gravel to form concrete is called:The process of adding cement and water to a mixture of sand and gravel to form concrete is called:",
        //   "A": "Compaction",
        //   "B": "Curing",
        //   "C": "Mixing",
        //   "D": "Paving",
        //   "answer": "C"
        // },
        // {
        //   "id": "322",
        //   "sibjectId": "17",
        //   "question":
        //       "Which type of foundation is suitable for a tall building located on soft soil?",
        //   "A": " Pile foundation",
        //   "B": "Strip foundation",
        //   "C": "Raft foundation",
        //   "D": "Pad foundation",
        //   "answer": "A"
        // },
        // {
        //   "id": "323",
        //   "sibjectId": "17",
        //   "question":
        //       "The phenomenon of the gradual sinking of a structure into the ground due to the consolidation of soil is called:",
        //   "A": "Subsidence",
        //   "B": "Settlement",
        //   "C": "Erosion",
        //   "D": "Uplift",
        //   "answer": "B"
        // },
        // {
        //   "id": "324",
        //   "sibjectId": "17",
        //   "question":
        //       "The horizontal distance between the outer faces of the supporting walls of a building is known as:",
        //   "A": "Plinth area",
        //   "B": "Floor area",
        //   "C": "Built-up area",
        //   "D": "Carpet area",
        //   "answer": "C"
        // },
        // {
        //   "id": "325",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of compacting soil by applying pressure to improve its load-bearing capacity is known as:",
        //   "A": "Curing",
        //   "B": "Stabilization",
        //   "C": "Compaction",
        //   "D": "Consolidation",
        //   "answer": "C"
        // },
        // {
        //   "id": "326",
        //   "sibjectId": "17",
        //   "question":
        //       "Which type of bridge is constructed with the help of cables and towers?",
        //   "A": "Arch bridge",
        //   "B": "Beam bridge",
        //   "C": "Suspension bridge",
        //   "D": "Truss bridge",
        //   "answer": "C"
        // },
        // {
        //   "id": "327",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of covering a metal surface with a layer of zinc to protect it from corrosion is called:",
        //   "A": "Galvanization",
        //   "B": "Anodizing",
        //   "C": "Electroplating",
        //   "D": "Oxidation",
        //   "answer": "A"
        // },
        // {
        //   "id": "328",
        //   "sibjectId": "17",
        //   "question":
        //       "The ratio of the volume of voids to the total volume of soil mass is known as:",
        //   "A": "Porosity",
        //   "B": "Void ratio",
        //   "C": "Specific gravity",
        //   "D": "Permeability",
        //   "answer": " B"
        // },
        // {
        //   "id": "329",
        //   "sibjectId": "17",
        //   "question":
        //       "The horizontal distance between the face of the retaining wall and the backfill is known as:",
        //   "A": "Backfill",
        //   "B": "Freeboard",
        //   "C": "Surcharge",
        //   "D": "Batter",
        //   "answer": "D"
        // },
        // {
        //   "id": "330",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of removing impurities and suspended particles from water to make it suitable for drinking is called:",
        //   "A": "Filtration",
        //   "B": "Sedimentation",
        //   "C": "Disinfection",
        //   "D": "Coagulation",
        //   "answer": "A"
        // },
        // {
        //   "id": "331",
        //   "sibjectId": "17",
        //   "question":
        //       "Which type of cement is used for marine structures and sewage works?",
        //   "A": "Rapid hardening cement",
        //   "B": "Low heat cement",
        //   "C": "Ordinary Portland cement",
        //   "D": "Sulphate-resistant cement",
        //   "answer": "D"
        // },
        // {
        //   "id": "332",
        //   "sibjectId": "17",
        //   "question":
        //       "The triangular space formed between the two arches of a pointed arch bridge is known as:",
        //   "A": "Spandrel",
        //   "B": "Keystone",
        //   "C": "Voussoir",
        //   "D": "Abutment",
        //   "answer": "A"
        // },
        // {
        //   "id": "333",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of shaping stones to specific sizes and shapes for construction is known as:",
        //   "A": "Quarrying",
        //   "B": "Dressing",
        //   "C": "Polishing",
        //   "D": "Sculpting",
        //   "answer": "B"
        // },
        // {
        //   "id": "334",
        //   "sibjectId": "17",
        //   "question": "The unit of measurement of water flow in a pipe is:",
        //   "A": " Cubic meter per hour (m3/h)",
        //   "B": "Cubic meter per second (m3/s)",
        //   "C": "Liters per minute (L/min)",
        //   "D": "Gallons per minute (GPM)",
        //   "answer": "B"
        // },
        // {
        //   "id": "335",
        //   "sibjectId": "17",
        //   "question":
        //       "The instrument used to measure the distance between two points is called:",
        //   "A": "Theodolite",
        //   "B": "Altimeter",
        //   "C": "Total station",
        //   "D": "Rangefinder",
        //   "answer": "C"
        // },
        // {
        //   "id": "336",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of heating wood in the absence of air to convert it into charcoal is called:",
        //   "A": "Distillation",
        //   "B": "Combustion",
        //   "C": "Pyrolysis",
        //   "D": "Fermentation",
        //   "answer": "C"
        // },
        // {
        //   "id": "337",
        //   "sibjectId": "17",
        //   "question":
        //       "The ratio of the load that causes failure of a material to the original cross-sectional area of the material is known as:",
        //   "A": "Young's modulus",
        //   "B": "Poisson's ratio",
        //   "C": "Shear modulus",
        //   "D": " Ultimate strength",
        //   "answer": "D"
        // },
        // {
        //   "id": "338",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of preventing the loss of moisture from fresh concrete by covering it with wet materials is called:",
        //   "A": "Compaction",
        //   "B": "Curing",
        //   "C": "Mixing",
        //   "D": "Setting",
        //   "answer": "B"
        // },
        // {
        //   "id": "339",
        //   "sibjectId": "17",
        //   "question":
        //       "The process of mixing lime, cement, or other materials with soil to improve its properties is known as:",
        //   "A": "Stabilization",
        //   "B": "Compaction",
        //   "C": "Consolidation",
        //   "D": "Grouting",
        //   "answer": "A"
        // },
        // {
        //   "id": "340",
        //   "sibjectId": "17",
        //   "question":
        //       "The load-carrying capacity of a structure divided by its own weight is known as:",
        //   "A": "Dead load",
        //   "B": "Live load",
        //   "C": "Safe load",
        //   "D": "Load factor",
        //   "answer": "C"
        // },
        // {
        //   "id": "341",
        //   "sibjectId": "18",
        //   "question": "Which of the following is not a function of commerce?",
        //   "A": "Production",
        //   "B": "Distribution",
        //   "C": "Exchange",
        //   "D": "Consumption",
        //   "answer": "A"
        // },
        // {
        //   "id": "342",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting principle states that expenses should be recorded in the same accounting period as the related revenues?",
        //   "A": " Matching Principle",
        //   "B": "Conservatism Principle",
        //   "C": "Revenue Recognition Principle",
        //   "D": "Materiality Principle",
        //   "answer": "A"
        // },
        // {
        //   "id": "343",
        //   "sibjectId": "18",
        //   "question": "What does FIFO stand for in accounting?",
        //   "A": "First In, First Out",
        //   "B": "Financial Information for Operations",
        //   "C": "First Investment, First Outcome",
        //   "D": "Full Inventory for Operations",
        //   "answer": "A"
        // },
        // {
        //   "id": "344",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting standard deals with revenue recognition for service transactions?",
        //   "A": "AS 9",
        //   "B": "AS 16",
        //   "C": "AS 18",
        //   "D": "AS 29",
        //   "answer": "C"
        // },
        // {
        //   "id": "345",
        //   "sibjectId": "18",
        //   "question":
        //       "The process of systematically recording, measuring, and communicating financial information of a business is known as:",
        //   "A": "Economics",
        //   "B": "Auditing",
        //   "C": "Finance",
        //   "D": "Accounting",
        //   "answer": "D"
        // },
        // {
        //   "id": "346",
        //   "sibjectId": "18",
        //   "question":
        //       "In which type of business organization is the liability of the owners limited to the extent of their capital contribution?",
        //   "A": "Partnership",
        //   "B": "Sole Proprietorship",
        //   "C": "Corporation",
        //   "D": "Limited Liability Partnership (LLP)",
        //   "answer": "D"
        // },
        // {
        //   "id": "347",
        //   "sibjectId": "18",
        //   "question":
        //       "The financial statement that shows the financial position of a company on a specific date is called:",
        //   "A": "Income Statement",
        //   "B": "Balance Sheet",
        //   "C": "Cash Flow Statement",
        //   "D": "Statement of Retained Earnings",
        //   "answer": "b"
        // },
        // {
        //   "id": "348",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting concept assumes that a business will continue to operate indefinitely?",
        //   "A": "Going Concern Concept",
        //   "B": "Consistency Concept",
        //   "C": "Materiality Concept",
        //   "D": "Conservatism Concept",
        //   "answer": "A"
        // },
        // {
        //   "id": "349",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting ratio measures a company's ability to pay its short-term obligations?",
        //   "A": "Current Ratio",
        //   "B": "Debt-Equity Ratio",
        //   "C": "Return on Investment (ROI)",
        //   "D": "Gross Profit Margin",
        //   "answer": "A"
        // },
        // {
        //   "id": "350",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting standard deals with the accounting for leases?",
        //   "A": "AS 10",
        //   "B": "AS 16",
        //   "C": "AS 19",
        //   "D": "AS 26",
        //   "answer": "C"
        // },
        // {
        //   "id": "351",
        //   "sibjectId": "18",
        //   "question":
        //       "Which financial statement represents the revenues and expenses of a company over a specific period?",
        //   "A": " Balance Sheet",
        //   "B": "Income Statement",
        //   "C": "Cash Flow Statement",
        //   "D": "Statement of Changes in Equity",
        //   "answer": "B"
        // },
        // {
        //   "id": "352",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting concept states that a business should only record transactions that can be expressed in monetary terms?",
        //   "A": "Historical Cost Concept",
        //   "B": "Money Measurement Concept",
        //   "C": "Dual Aspect Concept",
        //   "D": "Periodicity Concept",
        //   "answer": "B"
        // },
        // {
        //   "id": "353",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting standard deals with the accounting for government grants?",
        //   "A": "AS 12",
        //   "B": "AS 16",
        //   "C": "AS 22",
        //   "D": "AS 26",
        //   "answer": "C"
        // },
        // {
        //   "id": "354",
        //   "sibjectId": "18",
        //   "question":
        //       "The process of evaluating the financial performance and position of a company by analyzing its financial statements is known as:",
        //   "A": "Budgeting",
        //   "B": "Auditing",
        //   "C": "Financial Management",
        //   "D": "Financial Analysis",
        //   "answer": "D"
        // },
        // {
        //   "id": "355",
        //   "sibjectId": "18",
        //   "question":
        //       "In which accounting standard are the disclosure requirements for related party transactions covered?",
        //   "A": "AS 16",
        //   "B": "AS 18",
        //   "C": "AS 24",
        //   "D": "AS 29",
        //   "answer": "C"
        // },
        // {
        //   "id": "356",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting ratio measures a company's profitability by comparing its net income to its average total assets?",
        //   "A": "Return on Equity (ROE)",
        //   "B": "Gross Profit Margin",
        //   "C": "Return on Assets (ROA)",
        //   "D": "Debt-Equity Ratio",
        //   "answer": "C"
        // },
        // {
        //   "id": "357",
        //   "sibjectId": "18",
        //   "question":
        //       "Which financial statement shows the inflows and outflows of cash and cash equivalents during a specific period?",
        //   "A": "Income Statement",
        //   "B": "Balance Sheet",
        //   "C": "Cash Flow Statement",
        //   "D": "Statement of Changes in Equity",
        //   "answer": "C"
        // },
        // {
        //   "id": "358",
        //   "sibjectId": "18",
        //   "question":
        //       "The process of verifying and confirming the accuracy and reliability of a company's financial records is known as:",
        //   "A": " Financial Analysis",
        //   "B": "Budgeting",
        //   "C": "Auditing",
        //   "D": "Taxation",
        //   "answer": "C"
        // },
        // {
        //   "id": "359",
        //   "sibjectId": "18",
        //   "question":
        //       "Which accounting standard deals with the accounting for revenue from contracts with customers?",
        //   "A": "AS 9",
        //   "B": "AS 15",
        //   "C": "AS 18",
        //   "D": "AS 21",
        //   "answer": "D"
        // },
        // {
        //   "id": "360",
        //   "sibjectId": "18",
        //   "question":
        //       "The financial statement that shows the changes in equity of a company over a specific period is called:",
        //   "A": "Income Statement",
        //   "B": "Balance Sheet",
        //   "C": "Cash Flow Statement",
        //   "D": "Statement of Changes in Equity",
        //   "answer": "D"
        // },
        // {
        //   "id": "361",
        //   "sibjectId": "19",
        //   "question": "What does GDP stand for in Economics?",
        //   "A": "Gross Domestic Policy",
        //   "B": "Gross Domestic Product",
        //   "C": "Great Development Progress",
        //   "D": "General Development Plan",
        //   "answer": "B"
        // },
        // {
        //   "id": "362",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe a situation where demand exceeds supply, leading to higher prices?",
        //   "A": "Inflation",
        //   "B": "Deflation",
        //   "C": "Recession",
        //   "D": "Stagnation",
        //   "answer": "A"
        // },
        // {
        //   "id": "363",
        //   "sibjectId": "19",
        //   "question":
        //       "Which economic theory is based on the idea that a government can stimulate economic growth by increasing spending and lowering taxes?",
        //   "A": "Laissez-faire economics",
        //   "B": "Keynesian economics",
        //   "C": "Monetarism",
        //   "D": "Supply-side economics",
        //   "answer": "B"
        // },
        // {
        //   "id": "364",
        //   "sibjectId": "19",
        //   "question":
        //       "What does the term 'Fiscal Policy' refer to in Economics?",
        //   "A": "Control of the money supply by the central bank",
        //   "B":
        //       "Government's use of taxation and expenditure to influence the economy",
        //   "C": "Government's regulation of trade and commerce",
        //   "D": "Market-driven pricing of goods and services",
        //   "answer": "B"
        // },
        // {
        //   "id": "365",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe the total value of all goods and services produced within a country in a specific period?",
        //   "A": "Gross National Product (GNP)",
        //   "B": "Gross Domestic Product (GDP)",
        //   "C": "Net National Product (NNP)",
        //   "D": "Net Domestic Product (NDP)",
        //   "answer": "B"
        // },
        // {
        //   "id": "366",
        //   "sibjectId": "19",
        //   "question":
        //       "Which type of market structure is characterized by a large number of sellers, differentiated products, and easy entry and exit?",
        //   "A": "Monopoly",
        //   "B": "Oligopoly",
        //   "C": "Monopolistic competition",
        //   "D": "Perfect competition",
        //   "answer": "C"
        // },
        // {
        //   "id": "367",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe the total value of all final goods and services produced within a country's borders, including income earned by foreign residents?",
        //   "A": "Gross Domestic Product (GDP)",
        //   "B": "Gross National Product (GNP)",
        //   "C": "Net National Product (NNP)",
        //   "D": "Net Domestic Product (NDP)",
        //   "answer": "B"
        // },
        // {
        //   "id": "368",
        //   "sibjectId": "19",
        //   "question":
        //       "Which economic theory advocates for minimal government intervention in the economy and relies on market forces to allocate resources?",
        //   "A": "Keynesian economics",
        //   "B": "Laissez-faire economics",
        //   "C": "Monetarism",
        //   "D": "Supply-side economics",
        //   "answer": "B"
        // },
        // {
        //   "id": "369",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe the percentage of the labor force that is unemployed and actively seeking employment?",
        //   "A": " Inflation rate",
        //   "B": "Interest rate",
        //   "C": "Unemployment rate",
        //   "D": "Growth rate",
        //   "answer": "D"
        // },
        // {
        //   "id": "370",
        //   "sibjectId": "19",
        //   "question":
        //       "Which type of inflation is caused by an increase in the prices of production inputs, such as labor and raw materials?",
        //   "A": "Demand-pull inflation",
        //   "B": "Cost-push inflation",
        //   "C": "Stagflation",
        //   "D": "Hyperinflation",
        //   "answer": "B"
        // },
        // {
        //   "id": "371",
        //   "sibjectId": "19",
        //   "question":
        //       "What is the economic term for a situation where the production of one good requires the sacrifice of another good?",
        //   "A": "Scarcity",
        //   "B": "Opportunity cost",
        //   "C": "Production possibility frontier",
        //   "D": "Comparative advantage",
        //   "answer": "B"
        // },
        // {
        //   "id": "372",
        //   "sibjectId": "19",
        //   "question":
        //       "Which economic theory advocates for a stable and steady increase in the money supply to achieve economic growth?",
        //   "A": "Keynesian economics",
        //   "B": "Laissez-faire economics",
        //   "C": " Monetarism",
        //   "D": "Supply-side economics",
        //   "answer": "C"
        // },
        // {
        //   "id": "373",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe the difference between a country's exports and imports of goods and services?",
        //   "A": "Fiscal deficit",
        //   "B": "Budget deficit",
        //   "C": "Trade deficit",
        //   "D": "Current account deficit",
        //   "answer": "C"
        // },
        // {
        //   "id": "374",
        //   "sibjectId": "19",
        //   "question":
        //       "Which type of unemployment occurs due to changes in the business cycle, such as recessions and economic downturns?",
        //   "A": "Structural unemployment",
        //   "B": " Frictional unemployment",
        //   "C": "Cyclical unemployment",
        //   "D": "Seasonal unemployment",
        //   "answer": "D"
        // },
        // {
        //   "id": "375",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe the rate at which the general level of prices for goods and services is rising?",
        //   "A": " Inflation rate",
        //   "B": "Interest rate",
        //   "C": "Unemployment rate",
        //   "D": "Growth rate",
        //   "answer": "A"
        // },
        // {
        //   "id": "376",
        //   "sibjectId": "19",
        //   "question":
        //       "Which economic theory argues that reducing taxes on the wealthy and businesses will stimulate economic growth and benefit everyone?",
        //   "A": "Keynesian economics",
        //   "B": "Laissez-faire economics",
        //   "C": "Monetarism",
        //   "D": "Supply-side economics",
        //   "answer": "D"
        // },
        // {
        //   "id": "377",
        //   "sibjectId": "19",
        //   "question":
        //       "What does the term 'Monetary Policy' refer to in Economics?",
        //   "A":
        //       "Government's use of taxation and expenditure to influence the economy",
        //   "B": "Control of the money supply by the central bank",
        //   "C": "Government's regulation of trade and commerce",
        //   "D": "Market-driven pricing of goods and services",
        //   "answer": "B"
        // },
        // {
        //   "id": "378",
        //   "sibjectId": "19",
        //   "question":
        //       "Which type of market structure is characterized by a single seller controlling the entire market for a unique product or service?",
        //   "A": "Monopoly",
        //   "B": "Oligopoly",
        //   "C": "Monopolistic competition",
        //   "D": "Perfect competition",
        //   "answer": "A"
        // },
        // {
        //   "id": "379",
        //   "sibjectId": "19",
        //   "question":
        //       "In Economics, what is the term used to describe the study of how individuals and societies allocate scarce resources to meet their unlimited wants and needs?",
        //   "A": "Macroeconomics",
        //   "B": "Microeconomics",
        //   "C": "International economics",
        //   "D": "Development economics",
        //   "answer": "B"
        // },
        // {
        //   "id": "380",
        //   "sibjectId": "19",
        //   "question":
        //       "Which type of inflation occurs due to an increase in consumer demand that exceeds the supply of goods and services?",
        //   "A": "Demand-pull inflation",
        //   "B": "Cost-push inflation",
        //   "C": "Stagflation",
        //   "D": "Hyperinflation",
        //   "answer": "A"
        // },
        // {
        //   "id": "381",
        //   "sibjectId": "20",
        //   "question": "What is the SI unit of electric current?",
        //   "A": "Volt",
        //   "B": "Ampere",
        //   "C": "Ohm",
        //   "D": "Coulomb",
        //   "answer": "B"
        // },
        // {
        //   "id": "382",
        //   "sibjectId": "20",
        //   "question": "What does AC stand for in electrical terms?",
        //   "A": "Alternating Current",
        //   "B": "Amperes and Coulombs",
        //   "C": "Accelerated Charge",
        //   "D": "Applied Current",
        //   "answer": "A"
        // },
        // {
        //   "id": "383",
        //   "sibjectId": "20",
        //   "question":
        //       "Which electrical component is used to store electric charge temporarily?",
        //   "A": "Capacitor",
        //   "B": "Resistor",
        //   "C": "Inductor",
        //   "D": "Transformer",
        //   "answer": "A"
        // },
        // {
        //   "id": "384",
        //   "sibjectId": "20",
        //   "question":
        //       "The power rating of an electrical appliance is measured in:",
        //   "A": "Amperes",
        //   "B": "Volts",
        //   "C": "Watts",
        //   "D": "Ohms",
        //   "answer": "C"
        // },
        // {
        //   "id": "385",
        //   "sibjectId": "20",
        //   "question":
        //       "What is the main function of a transformer in an electrical circuit?",
        //   "A": "To regulate voltage",
        //   "B": "To store electrical energy",
        //   "C": "To convert DC to AC",
        //   "D": "To control current flow",
        //   "answer": "A"
        // },
        // {
        //   "id": "386",
        //   "sibjectId": "20",
        //   "question":
        //       "Which law governs the relationship between current, voltage, and resistance in a circuit?",
        //   "A": "Ohm's Law",
        //   "B": "Faraday's Law",
        //   "C": "Gauss's Law",
        //   "D": "Coulomb's Law",
        //   "answer": "A"
        // },
        // {
        //   "id": "387",
        //   "sibjectId": "20",
        //   "question":
        //       "Which type of motor is commonly used in household appliances like fans and mixers?",
        //   "A": "DC motor",
        //   "B": "Synchronous motor",
        //   "C": "Induction motor",
        //   "D": "Universal motor",
        //   "answer": "C"
        // },
        // {
        //   "id": "388",
        //   "sibjectId": "20",
        //   "question":
        //       "The process of converting mechanical energy into electrical energy is called:",
        //   "A": "Electromagnetic induction",
        //   "B": "Electromagnetic interference",
        //   "C": "Electromechanical conversion",
        //   "D": "Electromagnetic radiation",
        //   "answer": "A"
        // },
        // {
        //   "id": "389",
        //   "sibjectId": "20",
        //   "question": "In electrical circuits, what is the role of a diode?",
        //   "A": " To control voltage spikes",
        //   "B": "To store electrical energy",
        //   "C": "To amplify signals",
        //   "D": "To allow current flow in one direction",
        //   "answer": "D"
        // },
        // {
        //   "id": "390",
        //   "sibjectId": "20",
        //   "question":
        //       "Which electrical component is used to step-up or step-down voltage levels in power distribution?",
        //   "A": "Resistor",
        //   "B": "Capacitor",
        //   "C": "Diode",
        //   "D": "Transformer",
        //   "answer": "D"
        // },
        // {
        //   "id": "391",
        //   "sibjectId": "20",
        //   "question": "What is the SI unit of electrical resistance?",
        //   "A": "Volt",
        //   "B": "Ampere",
        //   "C": "Ohm",
        //   "D": "Coulomb",
        //   "answer": "C"
        // },
        // {
        //   "id": "392",
        //   "sibjectId": "20",
        //   "question":
        //       "Which electrical device is used to protect circuits from overcurrent situations?",
        //   "A": "Capacitor",
        //   "B": "Diode",
        //   "C": "Resistor",
        //   "D": "Fuse",
        //   "answer": "D"
        // },
        // {
        //   "id": "393",
        //   "sibjectId": "20",
        //   "question":
        //       "What is the main function of a circuit breaker in an electrical system?",
        //   "A": "To regulate voltage",
        //   "B": "To store electrical energy",
        //   "C": "To disconnect the circuit during faults",
        //   "D": "To control current flow",
        //   "answer": "C"
        // },
        // {
        //   "id": "394",
        //   "sibjectId": "20",
        //   "question": "Which type of battery is commonly used in automobiles?",
        //   "A": "Lead-acid battery",
        //   "B": "Nickel-cadmium battery",
        //   "C": "Lithium-ion battery",
        //   "D": "Alkaline battery",
        //   "answer": "A"
        // },
        // {
        //   "id": "395",
        //   "sibjectId": "20",
        //   "question":
        //       "Which electrical device is used to control the flow of current in a circuit by varying its resistance?",
        //   "A": "Capacitor",
        //   "B": "Diode",
        //   "C": "Resistor",
        //   "D": "Potentiometer",
        //   "answer": "D"
        // },
        // {
        //   "id": "396",
        //   "sibjectId": "20",
        //   "question":
        //       "The process of transmitting electrical energy through overhead wires is known as:",
        //   "A": "Induction",
        //   "B": "Conduction",
        //   "C": "Transmission",
        //   "D": "Distribution",
        //   "answer": "C"
        // },
        // {
        //   "id": "397",
        //   "sibjectId": "20",
        //   "question":
        //       "Which type of generator is commonly used in hydroelectric power plants?",
        //   "A": "DC generator",
        //   "B": "Synchronous generator",
        //   "C": " Induction generator",
        //   "D": "Wind generator",
        //   "answer": "B"
        // },
        // {
        //   "id": "398",
        //   "sibjectId": "20",
        //   "question": "In electrical circuits, what is the role of a relay?",
        //   "A": "To control voltage spikes",
        //   "B": "To store electrical energy",
        //   "C": "To amplify signals",
        //   "D": "To control large currents using small currents",
        //   "answer": "D"
        // },
        // {
        //   "id": "399",
        //   "sibjectId": "20",
        //   "question":
        //       "Which type of motor is commonly used in robotics and automation systems?",
        //   "A": "DC motor",
        //   "B": "Synchronous motor",
        //   "C": "Stepper motor",
        //   "D": "Universal motor",
        //   "answer": "C"
        // },
        // {
        //   "id": "400",
        //   "sibjectId": "20",
        //   "question":
        //       "What is the main function of a capacitor in an electrical circuit?",
        //   "A": "To regulate voltage",
        //   "B": "To store electrical energy",
        //   "C": "To convert DC to AC",
        //   "D": "To control current flow",
        //   "answer": "B"
        // },
        // {
        //   "id": "401",
        //   "sibjectId": "21",
        //   "question": "Which of the following is the largest ocean on Earth?",
        //   "A": " Indian Ocean",
        //   "B": "Atlantic Ocean",
        //   "C": "Pacific Ocean",
        //   "D": "Arctic Ocean",
        //   "answer": "c"
        // },
        // {
        //   "id": "402",
        //   "sibjectId": "21",
        //   "question":
        //       "The Equator is an imaginary line that divides the Earth into:",
        //   "A": "Northern and Southern Hemispheres",
        //   "B": "Eastern and Western Hemispheres",
        //   "C": "Temperate and Tropical Zones",
        //   "D": "Western and Eastern Hemispheres",
        //   "answer": "A"
        // },
        // {
        //   "id": "403",
        //   "sibjectId": "21",
        //   "question":
        //       "Which of the following is the longest river in the world?",
        //   "A": "Amazon River",
        //   "B": "Nile River",
        //   "C": "Mississippi River",
        //   "D": "Yangtze River",
        //   "answer": "B"
        // },
        // {
        //   "id": "404",
        //   "sibjectId": "21",
        //   "question":
        //       "Mount Everest, the highest peak in the world, is located in which mountain range?",
        //   "A": "Andes",
        //   "B": "Rocky Mountains",
        //   "C": "Himalayas",
        //   "D": "Alps",
        //   "answer": "C"
        // },
        // {
        //   "id": "405",
        //   "sibjectId": "21",
        //   "question":
        //       "The Great Barrier Reef, the world's largest coral reef system, is located off the coast of which country?",
        //   "A": "Australia",
        //   "B": "Brazil",
        //   "C": "India",
        //   "D": "Indonesia",
        //   "answer": "A"
        // },
        // {
        //   "id": "406",
        //   "sibjectId": "21",
        //   "question":
        //       "The Amazon rainforest, known as the 'lungs of the Earth,'' is primarily located in which continent?",
        //   "A": "Asia",
        //   "B": "Africa",
        //   "C": "South America",
        //   "D": "North America",
        //   "answer": "C"
        // },
        // {
        //   "id": "407",
        //   "sibjectId": "21",
        //   "question":
        //       "Which of the following is not a primary greenhouse gas responsible for global warming?",
        //   "A": "Carbon dioxide (CO2)",
        //   "B": "Methane (CH4)",
        //   "C": "Nitrous oxide (N2O)",
        //   "D": "Oxygen (O2)",
        //   "answer": "D"
        // },
        // {
        //   "id": "408",
        //   "sibjectId": "21",
        //   "question": "The Tropic of Cancer is located at approximately:",
        //   "A": "23.5 degrees North",
        //   "B": "23.5 degrees South",
        //   "C": "0 degrees",
        //   "D": "66.5 degrees North",
        //   "answer": "A"
        // },
        // {
        //   "id": "409",
        //   "sibjectId": "21",
        //   "question":
        //       "The process by which water vapor in the atmosphere turns into water droplets or ice crystals is called:",
        //   "A": "Condensation",
        //   "B": "Precipitation",
        //   "C": "Evaporation",
        //   "D": "Transpiration",
        //   "answer": "A"
        // },
        // {
        //   "id": "410",
        //   "sibjectId": "21",
        //   "question":
        //       "The Gulf Stream is a warm ocean current that influences the climate of which region?",
        //   "A": "Mediterranean region",
        //   "B": "Western Europe",
        //   "C": "South Asia",
        //   "D": "Eastern Australia",
        //   "answer": "B"
        // },
        // {
        //   "id": "411",
        //   "sibjectId": "21",
        //   "question":
        //       "The 'Ring of Fire' is a region in the Pacific Ocean known for its:",
        //   "A": "Active volcanoes and earthquakes",
        //   "B": "Rich marine biodiversity",
        //   "C": "Vast coral reefs",
        //   "D": "Major shipping routes",
        //   "answer": "A"
        // },
        // {
        //   "id": "412",
        //   "sibjectId": "21",
        //   "question": "The largest desert in the world is:",
        //   "A": "Sahara Desert",
        //   "B": "Arabian Desert",
        //   "C": "Gobi Desert",
        //   "D": "Antarctica Desert",
        //   "answer": "A"
        // },
        // {
        //   "id": "413",
        //   "sibjectId": "21",
        //   "question":
        //       "The process by which fertile land becomes desert due to human activities or climate change is known as:",
        //   "A": "Deforestation",
        //   "B": "Urbanization",
        //   "C": "Desertification",
        //   "D": "Salinization",
        //   "answer": "C"
        // },
        // {
        //   "id": "414",
        //   "sibjectId": "21",
        //   "question":
        //       "The 'Black Forest' is a famous mountain range located in which country?",
        //   "A": "Germany",
        //   "B": "France",
        //   "C": "Switzerland",
        //   "D": "Austria",
        //   "answer": "A"
        // },
        // {
        //   "id": "415",
        //   "sibjectId": "21",
        //   "question":
        //       "The Grand Canyon, a massive canyon carved by the Colorado River, is located in which country?",
        //   "A": "USA",
        //   "B": "Canada",
        //   "C": "Mexico",
        //   "D": "Brazil",
        //   "answer": "A"
        // },
        // {
        //   "id": "416",
        //   "sibjectId": "21",
        //   "question": "The driest place on Earth is:",
        //   "A": " Sahara Desert",
        //   "B": "Atacama Desert",
        //   "C": "Gobi Desert",
        //   "D": "Kalahari Desert",
        //   "answer": "B"
        // },
        // {
        //   "id": "417",
        //   "sibjectId": "21",
        //   "question":
        //       "The Dead Sea, known for its high salinity, is bordered by which two countries?",
        //   "A": "Israel and Egypt",
        //   "B": "Jordan and Saudi Arabia",
        //   "C": "Turkey and Syria",
        //   "D": "Iran and Iraq",
        //   "answer": "B"
        // },
        // {
        //   "id": "418",
        //   "sibjectId": "21",
        //   "question":
        //       "The 'Silk Road,'' an ancient trade route connecting Asia and Europe, was instrumental in the exchange of goods and ideas between which civilizations?",
        //   "A": "Roman and Greek",
        //   "B": "Chinese and Indian",
        //   "C": " Egyptian and Mesopotamian",
        //   "D": "Persian and Byzantine",
        //   "answer": "B"
        // },
        // {
        //   "id": "419",
        //   "sibjectId": "21",
        //   "question":
        //       "The city of Venice, known for its canals and gondolas, is situated in which European country?",
        //   "A": "Italy",
        //   "B": "France",
        //   "C": "Spain",
        //   "D": "Greece",
        //   "answer": "A"
        // },
        // {
        //   "id": "420",
        //   "sibjectId": "21",
        //   "question":
        //       "The Great Victoria Desert is located in which continent?",
        //   "A": "Africa",
        //   "B": "Australia",
        //   "C": "South America",
        //   "D": "North America",
        //   "answer": "B"
        // },
        // {
        //   "id": "421",
        //   "subjectId": "22",
        //   "question":
        //       "The study of rocks, minerals, and the processes that shape the Earth's surface is known as:",
        //   "A": "Meteorology",
        //   "B": "Geology",
        //   "C": "Biology",
        //   "D": "Chemistry",
        //   "answer": "B"
        // },
        // {
        //   "id": "422",
        //   "subjectId": "22",
        //   "question":
        //       "Which type of rock is formed by the cooling and solidification of molten lava or magma?",
        //   "A": "Sedimentary rock",
        //   "B": "Metamorphic rock",
        //   "C": "Igneous rock",
        //   "D": "Volcanic rock",
        //   "answer": "C"
        // },
        // {
        //   "id": "423",
        //   "subjectId": "22",
        //   "question":
        //       "The process of breaking down rocks into smaller particles by physical or chemical means is called:",
        //   "A": "Weathering",
        //   "B": "Erosion",
        //   "C": "Sedimentation",
        //   "D": "Deposition",
        //   "answer": "A"
        // },
        // {
        //   "id": "424",
        //   "subjectId": "22",
        //   "question":
        //       "The theory of plate tectonics suggests that the Earth's lithosphere is divided into several large plates that:",
        //   "A": "Rotate around the North Pole",
        //   "B": " Move independently of each other",
        //   "C": " Move closer to the equator",
        //   "D": "Merge into a supercontinent",
        //   "answer": "B"
        // },
        // {
        //   "id": "425",
        //   "subjectId": "22",
        //   "question":
        //       "The Himalayan mountain range was formed due to the collision of which two tectonic plates?",
        //   "A": "Indian and Australian plates",
        //   "B": "Indian and Eurasian plates",
        //   "C": "Eurasian and African plates",
        //   "D": "African and South American plates",
        //   "answer": "B"
        // },
        // {
        //   "id": "426",
        //   "subjectId": "22",
        //   "question":
        //       "The study of fossils to understand the Earth's history and the evolution of life is known as:",
        //   "A": "Paleontology",
        //   "B": "Seismology",
        //   "C": "Petrology",
        //   "D": "Mineralogy",
        //   "answer": "A"
        // },
        // {
        //   "id": "427",
        //   "subjectId": "22",
        //   "question":
        //       "Which type of rock is formed by the gradual compression and heating of existing rocks?",
        //   "A": "Sedimentary rock",
        //   "B": " Igneous rock",
        //   "C": "Metamorphic rock",
        //   "D": "Volcanic rock",
        //   "answer": "C"
        // },
        // {
        //   "id": "428",
        //   "subjectId": "22",
        //   "question": "The Mohs scale is used to measure the:",
        //   "A": "Density of minerals",
        //   "B": "Hardness of minerals",
        //   "C": "Luster of minerals",
        //   "D": "Cleavage of minerals",
        //   "answer": "B"
        // },
        // {
        //   "id": "429",
        //   "subjectId": "22",
        //   "question":
        //       "The process of converting sediments into solid rock by compaction and cementation is called:",
        //   "A": "Erosion",
        //   "B": "Weathering",
        //   "C": "Lithification",
        //   "D": "Crystallization",
        //   "answer": "C"
        // },
        // {
        //   "id": "430",
        //   "subjectId": "22",
        //   "question":
        //       "The layer of the Earth's atmosphere where meteors burn up upon entry is called the:",
        //   "A": "Troposphere",
        //   "B": "Exosphere",
        //   "C": "Mesosphere",
        //   "D": "Stratosphere",
        //   "answer": "C"
        // },
        // {
        //   "id": "431",
        //   "subjectId": "22",
        //   "question":
        //       "Which type of rock is formed from the accumulation of sediments and organic matter over time?",
        //   "A": " Igneous rock",
        //   "B": "Metamorphic rock",
        //   "C": "Sedimentary rock",
        //   "D": "Volcanic rock",
        //   "answer": "C"
        // },
        // {
        //   "id": "432",
        //   "subjectId": "22",
        //   "question": "The study of earthquakes and seismic waves is known as:",
        //   "A": "Volcanology",
        //   "B": "Seismology",
        //   "C": "Paleontology",
        //   "D": "Geomorphology",
        //   "answer": "B"
        // },
        // {
        //   "id": "433",
        //   "subjectId": "22",
        //   "question":
        //       "The natural process by which the surface of the Earth is gradually worn away by natural forces is called:",
        //   "A": "Erosion",
        //   "B": "Weathering",
        //   "C": "Sedimentation",
        //   "D": "Deposition",
        //   "answer": "A"
        // },
        // {
        //   "id": "434",
        //   "subjectId": "22",
        //   "question": "The process of melting rocks to form magma is known as:",
        //   "A": "Weathering",
        //   "B": "Erosion",
        //   "C": "Melting",
        //   "D": "Crystallization",
        //   "answer": "C"
        // },
        // {
        //   "id": "435",
        //   "subjectId": "22",
        //   "question":
        //       "The Pacific Ring of Fire is an area in the Pacific Ocean known for its frequent:",
        //   "A": "Tsunamis",
        //   "B": "Typhoons",
        //   "C": "Earthquakes and volcanic activity",
        //   "D": "Coral reefs",
        //   "answer": "C"
        // },
        // {
        //   "id": "436",
        //   "subjectId": "22",
        //   "question":
        //       "Which of the following is a type of extrusive igneous rock?",
        //   "A": "Granite",
        //   "B": "Basalt",
        //   "C": "Marble",
        //   "D": "Schist",
        //   "answer": "B"
        // },
        // {
        //   "id": "437",
        //   "subjectId": "22",
        //   "question":
        //       "The study of the Earth's magnetic field and its changes over time is known as:",
        //   "A": "Magnetology",
        //   "B": "Paleontology",
        //   "C": "Geomagnetism",
        //   "D": "Petrology",
        //   "answer": "C"
        // },
        // {
        //   "id": "438",
        //   "subjectId": "22",
        //   "question": "The Richter scale measures the:",
        //   "A": "Temperature of the Earth's interior",
        //   "B": "Strength of volcanic eruptions",
        //   "C": "Magnitude of earthquakes",
        //   "D": "Intensity of hurricanes",
        //   "answer": "C"
        // },
        // {
        //   "id": "439",
        //   "subjectId": "22",
        //   "question":
        //       "The process of converting sedimentary rocks into metamorphic rocks due to heat and pressure is called:",
        //   "A": "Weathering",
        //   "B": "Erosion",
        //   "C": "Metamorphism",
        //   "D": "Lithification",
        //   "answer": "C"
        // },
        // {
        //   "id": "440",
        //   "subjectId": "22",
        //   "question":
        //       "The highest mountain in Africa, Mount Kilimanjaro, is located in which country?",
        //   "A": "Kenya",
        //   "B": " South Africa",
        //   "C": "Tanzania",
        //   "D": "Ethiopia",
        //   "answer": "C"
        // },
        // {
        //   "id": "441",
        //   "subjectId": "23",
        //   "question":
        //       "The Indus Valley Civilization was primarily located in which modern-day country?",
        //   "A": "India",
        //   "B": "Pakistan",
        //   "C": "Nepal",
        //   "D": "Bangladesh",
        //   "answer": "B"
        // },
        // {
        //   "id": "442",
        //   "subjectId": "23",
        //   "question": "The Maurya Empire was founded by:",
        //   "A": "Chandragupta Maurya",
        //   "B": "Ashoka the Great",
        //   "C": "Kanishka",
        //   "D": "Harsha",
        //   "answer": "A"
        // },
        // {
        //   "id": "443",
        //   "subjectId": "23",
        //   "question":
        //       "The famous rock edicts of Ashoka the Great were written in which language?",
        //   "A": "Sanskrit",
        //   "B": "Prakrit",
        //   "C": "Pali",
        //   "D": "Tamil",
        //   "answer": "B"
        // },
        // {
        //   "id": "444",
        //   "subjectId": "23",
        //   "question":
        //       "The Battle of Plassey, which laid the foundation for British rule in India, was fought in the year:",
        //   "A": "1757",
        //   "B": "1857",
        //   "C": "1657",
        //   "D": "1957",
        //   "answer": "A"
        // },
        // {
        //   "id": "445",
        //   "subjectId": "23",
        //   "question": "The Indian National Congress was formed in the year:",
        //   "A": "1857",
        //   "B": "1885",
        //   "C": "1905",
        //   "D": "1947",
        //   "answer": "B"
        // },
        // {
        //   "id": "446",
        //   "subjectId": "23",
        //   "question": "The Quit India Movement was launched in which year?",
        //   "A": "1857",
        //   "B": "1919",
        //   "C": "1930",
        //   "D": "1942",
        //   "answer": "D"
        // },
        // {
        //   "id": "447",
        //   "subjectId": "23",
        //   "question":
        //       "Who was the first President of the Indian National Congress?",
        //   "A": "Mahatma Gandhi",
        //   "B": "Jawaharlal Nehru",
        //   "C": "Dadabhai Naoroji",
        //   "D": "A.O. Hume",
        //   "answer": "C"
        // },
        // {
        //   "id": "448",
        //   "subjectId": "23",
        //   "question":
        //       "The Chola dynasty was known for its advancements in which field?",
        //   "A": "Mathematics",
        //   "B": "Science",
        //   "C": "Astronomy",
        //   "D": "Architecture",
        //   "answer": "D"
        // },
        // {
        //   "id": "449",
        //   "subjectId": "23",
        //   "question":
        //       "The famous 'Dandi March' led by Mahatma Gandhi was a protest against:",
        //   "A": "Salt tax",
        //   "B": "Land reforms",
        //   "C": "Religious discrimination",
        //   "D": "Education policies",
        //   "answer": "A"
        // },
        // {
        //   "id": "450",
        //   "subjectId": "23",
        //   "question":
        //       "The Sarnath Lion Capital, which is now the National Emblem of India, belongs to the period of:",
        //   "A": "Maurya Empire",
        //   "B": "Gupta Empire",
        //   "C": "Chola dynasty",
        //   "D": "Mughal Empire",
        //   "answer": "A"
        // },
        // {
        //   "id": "451",
        //   "subjectId": "23",
        //   "question": "Who was the founder of the Gupta Empire?",
        //   "A": "Chandragupta Maurya",
        //   "B": "Ashoka the Great",
        //   "C": "Chandragupta I",
        //   "D": "Harsha",
        //   "answer": "C"
        // },
        // {
        //   "id": "452",
        //   "subjectId": "23",
        //   "question":
        //       "The famous Harappan site 'Lothal' was known for its expertise in:",
        //   "A": "Shipbuilding",
        //   "B": "Textile industry",
        //   "C": "Pottery",
        //   "D": "Metallurgy",
        //   "answer": "A"
        // },
        // {
        //   "id": "453",
        //   "subjectId": "23",
        //   "question": "The 'Doctrine of Lapse' was introduced by:",
        //   "A": "Lord Hastings",
        //   "B": " Lord Dalhousie",
        //   "C": "Lord Curzon",
        //   "D": " Lord Wellesley",
        //   "answer": "B"
        // },
        // {
        //   "id": "454",
        //   "subjectId": "23",
        //   "question":
        //       "The Battle of Plassey was fought between the British East India Company and which Indian ruler?",
        //   "A": "Tipu Sultan",
        //   "B": "Rana Pratap",
        //   "C": "Siraj-ud-Daulah",
        //   "D": "Maharaja Ranjit Singh",
        //   "answer": "C"
        // },
        // {
        //   "id": "455",
        //   "subjectId": "23",
        //   "question":
        //       "The 'Indian Mutiny' or 'Sepoy Mutiny' of 1857 was a significant uprising against British rule. Where did it start?",
        //   "A": "Delhi",
        //   "B": "Kolkata",
        //   "C": "Lucknow",
        //   "D": "Meerut",
        //   "answer": "D"
        // },
        // {
        //   "id": "456",
        //   "subjectId": "23",
        //   "question":
        //       "Who among the following was the founder of the Khilji dynasty in India?",
        //   "A": "Alauddin Khilji",
        //   "B": "Jalal-ud-din Khilji",
        //   "C": "Muhammad bin Tughlaq",
        //   "D": "Balban",
        //   "answer": "B"
        // },
        // {
        //   "id": "457",
        //   "subjectId": "23",
        //   "question":
        //       "The famous 'Pillars of Ashoka' were erected during the reign of:",
        //   "A": "Harsha",
        //   "B": "Ashoka the Great",
        //   "C": "Chandragupta Maurya",
        //   "D": "Kanishka",
        //   "answer": "B"
        // },
        // {
        //   "id": "458",
        //   "subjectId": "23",
        //   "question":
        //       "The famous Ajanta and Ellora caves are located in which state of India?",
        //   "A": " Madhya Pradesh",
        //   "B": "Maharashtra",
        //   "C": "Rajasthan",
        //   "D": "Gujarat",
        //   "answer": "B"
        // },
        // {
        //   "id": "459",
        //   "subjectId": "23",
        //   "question":
        //       "Who was the first woman President of the Indian National Congress?",
        //   "A": "Annie Besant",
        //   "B": "Sarojini Naidu",
        //   "C": "Indira Gandhi",
        //   "D": "VVijaya Lakshmi Pandit",
        //   "answer": "A"
        // },
        // {
        //   "id": "460",
        //   "subjectId": "23",
        //   "question": "The capital city of the Chola dynasty was:",
        //   "A": "Delhi",
        //   "B": "Varanasi",
        //   "C": "Madurai",
        //   "D": "Kolkata",
        //   "answer": "C"
        // },
        // {
        //   "id": "461",
        //   "subjectId": "24",
        //   "question":
        //       "Which of the following articles of the Indian Constitution deals with the Right to Equality?",
        //   "A": "Article 14-18",
        //   "B": "Article 19-22",
        //   "C": "Article 32",
        //   "D": "Article 44",
        //   "answer": "A"
        // },
        // {
        //   "id": "462",
        //   "subjectId": "24",
        //   "question":
        //       "The Directive Principles of State Policy in the Indian Constitution are inspired by the Constitution of which country?",
        //   "A": "United States of America",
        //   "B": "United Kingdom",
        //   "C": "Ireland",
        //   "D": "France",
        //   "answer": "C"
        // },
        // {
        //   "id": "463",
        //   "subjectId": "24",
        //   "question":
        //       "Who has the power to appoint the Chief Justice of India?",
        //   "A": " President of India",
        //   "B": "Prime Minister of India",
        //   "C": "Chief Justice of India",
        //   "D": "Parliament of India",
        //   "answer": "A"
        // },
        // {
        //   "id": "464",
        //   "subjectId": "24",
        //   "question":
        //       "The doctrine of 'udicial review' allows the judiciary to:",
        //   "A": "Create new laws",
        //   "B": "Review administrative decisions",
        //   "C": "Overrule constitutional amendments",
        //   "D": "Amend the Constitution",
        //   "answer": "B"
        // },
        // {
        //   "id": "465",
        //   "subjectId": "24",
        //   "question": "The Supreme Court of India was established in the year:",
        //   "A": "1947",
        //   "B": "1950",
        //   "C": "1951",
        //   "D": "1952",
        //   "answer": "B"
        // },
        // {
        //   "id": "466",
        //   "subjectId": "24",
        //   "question":
        //       "The Indian Penal Code (IPC) was enacted during the colonial period by:",
        //   "A": "Lord Dalhousie",
        //   "B": "Lord Canning",
        //   "C": " Lord Ripon",
        //   "D": "Lord Macaulay",
        //   "answer": "D"
        // },
        // {
        //   "id": "467",
        //   "subjectId": "24",
        //   "question":
        //       "Which of the following is not a fundamental right under the Indian Constitution?",
        //   "A": "Right to Education",
        //   "B": "Right to Freedom of Speech and Expression",
        //   "C": "Right to Equality",
        //   "D": "Right to Property",
        //   "answer": "D"
        // },
        // {
        //   "id": "468",
        //   "subjectId": "24",
        //   "question": "The Constitution of India was adopted on:",
        //   "A": "26th January 1949",
        //   "B": "15th August 1947",
        //   "C": "26th November 1949",
        //   "D": "15th August 1949",
        //   "answer": "C"
        // },
        // {
        //   "id": "469",
        //   "subjectId": "24",
        //   "question":
        //       "Who is the chief legal advisor to the Government of India?",
        //   "A": " Attorney General of India",
        //   "B": "Solicitor General of India",
        //   "C": "Chief Justice of India",
        //   "D": " Law Minister of India",
        //   "answer": "A"
        // },
        // {
        //   "id": "470",
        //   "subjectId": "24",
        //   "question":
        //       "The power to pardon and grant reprieves is vested with the:",
        //   "A": "President of India",
        //   "B": "Prime Minister of India",
        //   "C": "Chief Justice of India",
        //   "D": "Parliament of India",
        //   "answer": "A"
        // },
        // {
        //   "id": "471",
        //   "subjectId": "24",
        //   "question":
        //       "The Supreme Court of India consists of a Chief Justice and how many other judges?",
        //   "A": "24",
        //   "B": "25",
        //   "C": "30",
        //   "D": "31",
        //   "answer": "C"
        // },
        // {
        //   "id": "472",
        //   "subjectId": "24",
        //   "question":
        //       "The Right to Information Act (RTI) was enacted in which year?",
        //   "A": "2002",
        //   "B": "2004",
        //   "C": "2005",
        //   "D": "2006",
        //   "answer": "C"
        // },
        // {
        //   "id": "473",
        //   "subjectId": "24",
        //   "question":
        //       "Which amendment to the Indian Constitution made the Right to Education a fundamental right?",
        //   "A": "86th Amendment",
        //   "B": "88th Amendment",
        //   "C": "89th Amendment",
        //   "D": "90th Amendment",
        //   "answer": "A"
        // },
        // {
        //   "id": "474",
        //   "subjectId": "24",
        //   "question": "Who was the first Chief Justice of India?",
        //   "A": " H. J. Kania",
        //   "B": "B. R. Ambedkar",
        //   "C": "P. N. Bhagwati",
        //   "D": "Harilal Kania",
        //   "answer": "D"
        // },
        // {
        //   "id": "475",
        //   "subjectId": "24",
        //   "question":
        //       "The National Green Tribunal (NGT) was established in the year:",
        //   "A": "2008",
        //   "B": "2010",
        //   "C": "2012",
        //   "D": "2014",
        //   "answer": "C"
        // },
        // {
        //   "id": "476",
        //   "subjectId": "24",
        //   "question":
        //       "The All India Services (AIS) are governed by which article of the Indian Constitution?",
        //   "A": "Article 312",
        //   "B": "Article 312A",
        //   "C": "Article 315",
        //   "D": "Article 324",
        //   "answer": "A"
        // },
        // {
        //   "id": "477",
        //   "subjectId": "24",
        //   "question":
        //       "Which article of the Indian Constitution deals with the Right to Constitutional Remedies?",
        //   "A": "Article 20",
        //   "B": "Article 32",
        //   "C": "Article 40",
        //   "D": "Article 44",
        //   "answer": "B"
        // },
        // {
        //   "id": "478",
        //   "subjectId": "24",
        //   "question": "The legal concept of 'Locus Standi' refers to:",
        //   "A": "The power of the President to pardon",
        //   "B": "The right of a person to approach the court",
        //   "C": "The authority of the Supreme Court to review laws",
        //   "D": "The power of the Parliament to amend the Constitution",
        //   "answer": "B"
        // },
        // {
        //   "id": "479",
        //   "subjectId": "24",
        //   "question":
        //       "The International Court of Justice (ICJ) is located in which city?",
        //   "A": "Geneva, Switzerland",
        //   "B": "The Hague, Netherlands",
        //   "C": "New York, USA",
        //   "D": "London, UK",
        //   "answer": "B"
        // },
        // {
        //   "id": "480",
        //   "subjectId": "24",
        //   "question":
        //       "Who is the final interpreter of the Indian Constitution?",
        //   "A": "President of India",
        //   "B": "Supreme Court of India",
        //   "C": "Parliament of India",
        //   "D": "Prime Minister of India",
        //   "answer": "B"
        // },
        // {
        //   "id": "481",
        //   "subjectId": "25",
        //   "question": "Which of the following is NOT a function of management?",
        //   "A": "Planning",
        //   "B": "Organizing",
        //   "C": "Controlling",
        //   "D": "Selling",
        //   "answer": "D"
        // },
        // {
        //   "id": "482",
        //   "subjectId": "25",
        //   "question":
        //       "The process of dividing work activities into manageable units and assigning them to specific individuals or groups is known as:",
        //   "A": "Planning",
        //   "B": "Organizing",
        //   "C": "Leading",
        //   "D": "Controlling",
        //   "answer": "B"
        // },
        // {
        //   "id": "483",
        //   "subjectId": "25",
        //   "question": "Who is considered the father of scientific management?",
        //   "A": "Peter Drucker",
        //   "B": "Henri Fayol",
        //   "C": "Frederick Taylor",
        //   "D": "Elton Mayo",
        //   "answer": "C"
        // },
        // {
        //   "id": "484",
        //   "subjectId": "25",
        //   "question":
        //       "Which of the following is a financial tool used for evaluating an organization's financial health and performance over time?",
        //   "A": "Balance Sheet",
        //   "B": "Organizational Chart",
        //   "C": "SWOT Analysis",
        //   "D": "Gantt Chart",
        //   "answer": "A"
        // },
        // {
        //   "id": "485",
        //   "subjectId": "25",
        //   "question":
        //       "The process of identifying, attracting, and retaining the best-suited individuals for specific job positions within an organization is known as:",
        //   "A": "Marketing",
        //   "B": "Recruitment",
        //   "C": "Sales",
        //   "D": "Production",
        //   "answer": "B"
        // },
        // {
        //   "id": "486",
        //   "subjectId": "25",
        //   "question":
        //       "Which management theorist introduced the 14 Principles of Management?",
        //   "A": "Peter Drucker",
        //   "B": "Henri Fayol",
        //   "C": " Frederick Taylor",
        //   "D": "Elton Mayo",
        //   "answer": "B"
        // },
        // {
        //   "id": "487",
        //   "subjectId": "25",
        //   "question":
        //       "The process of monitoring progress, comparing actual performance with set objectives, and taking corrective actions is called:",
        //   "A": "Planning",
        //   "B": "Organizing",
        //   "C": "Leading",
        //   "D": "Controlling",
        //   "answer": "D"
        // },
        // {
        //   "id": "488",
        //   "subjectId": "25",
        //   "question": "'Unity of Command' is a principle that emphasizes:",
        //   "A": "Specialization of labor",
        //   "B": "Scalar chain of command",
        //   "C": "Centralization of authority",
        //   "D": "Each employee should have only one direct supervisor",
        //   "answer": "D"
        // },
        // {
        //   "id": "489",
        //   "subjectId": "25",
        //   "question":
        //       "Which of the following is NOT a primary function of a manager?",
        //   "A": "Interpersonal",
        //   "B": "Informational",
        //   "C": "Decisional",
        //   "D": "Financial",
        //   "answer": "D"
        // },
        // {
        //   "id": "490",
        //   "subjectId": "25",
        //   "question":
        //       "The process of guiding and influencing employees to achieve organizational goals is known as:",
        //   "A": "Planning",
        //   "B": "Organizing",
        //   "C": "Leading",
        //   "D": "Controlling",
        //   "answer": "C"
        // },
        // {
        //   "id": "491",
        //   "subjectId": "25",
        //   "question":
        //       "The management principle that states that there should be a clear and unbroken line of authority from the top to the bottom of the organization is called:",
        //   "A": "Unity of Direction",
        //   "B": " Division of Labor",
        //   "C": "Scalar Chain",
        //   "D": "Esprit de Corps",
        //   "answer": "C"
        // },
        // {
        //   "id": "492",
        //   "subjectId": "25",
        //   "question":
        //       "The concept of 'Management by Objectives' (MBO) was introduced by:",
        //   "A": "Peter Drucker",
        //   "B": "Henri Fayol",
        //   "C": "Frederick Taylor",
        //   "D": "Elton Mayo",
        //   "answer": "A"
        // },
        // {
        //   "id": "493",
        //   "subjectId": "25",
        //   "question":
        //       "Which type of leadership style involves making decisions without consulting others and providing clear and specific instructions to subordinates?",
        //   "A": "Autocratic",
        //   "B": "Democratic",
        //   "C": " Laissez-faire",
        //   "D": "Transformational",
        //   "answer": "A"
        // },
        // {
        //   "id": "494",
        //   "subjectId": "25",
        //   "question":
        //       "The management principle that suggests that a worker should receive orders from only one supervisor to avoid confusion and conflicts is known as:",
        //   "A": "Unity of Direction",
        //   "B": "Division of Labor",
        //   "C": "Unity of Command",
        //   "D": "Esprit de Corps",
        //   "answer": "C"
        // },
        // {
        //   "id": "495",
        //   "subjectId": "25",
        //   "question":
        //       "The process of assessing an organization's strengths, weaknesses, opportunities, and threats is called:",
        //   "A": "Benchmarking",
        //   "B": "Controlling",
        //   "C": " SWOT Analysis",
        //   "D": "Forecasting",
        //   "answer": "C"
        // },
        // {
        //   "id": "496",
        //   "subjectId": "25",
        //   "question":
        //       "The management principle that emphasizes the need for harmony and unity among employees is known as:",
        //   "A": "Unity of Direction",
        //   "B": "Division of Labor",
        //   "C": "Unity of Command",
        //   "D": "Esprit de Corps",
        //   "answer": "D"
        // },
        // {
        //   "id": "497",
        //   "subjectId": "25",
        //   "question":
        //       "The theory that focuses on the psychological and social factors that influence employee behavior in the workplace is called:",
        //   "A": "Scientific Management",
        //   "B": "Human Relations Theory",
        //   "C": "Contingency Theory",
        //   "D": "Bureaucratic Theory",
        //   "answer": "B"
        // },
        // {
        //   "id": "498",
        //   "subjectId": "25",
        //   "question":
        //       "Which of the following is an example of an external environmental factor that can influence an organization's management decisions?",
        //   "A": "Organizational Culture",
        //   "B": "Market Demand",
        //   "C": "Employee Morale",
        //   "D": "Leadership Style",
        //   "answer": "B"
        // },
        // {
        //   "id": "499",
        //   "subjectId": "25",
        //   "question":
        //       "The process of coordinating and allocating an organization's resources to achieve its goals efficiently and effectively is known as:",
        //   "A": "Planning",
        //   "B": "Organizing",
        //   "C": "Leading",
        //   "D": "Controlling",
        //   "answer": "B"
        // },
        // {
        //   "id": "500",
        //   "subjectId": "25",
        //   "question":
        //       "The management principle that suggests that tasks should be divided among different individuals to improve efficiency is known as:",
        //   "A": "Unity of Direction",
        //   "B": "Division of Labor",
        //   "C": "Scalar Chain",
        //   "D": "Esprit de Corps",
        //   "answer": "B"
        // },
        {
          "id": "501",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "502",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "503",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "504",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "505",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "506",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "507",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "508",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "509",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "510",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "511",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "512",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "513",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "514",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "515",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "516",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "517",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "518",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "519",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "520",
          "subjectID": "26",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "521",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "522",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "523",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "524",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "525",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "526",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "527",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "528",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "529",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "530",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "531",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "532",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "533",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "534",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "535",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "536",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "537",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "538",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "539",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "540",
          "subjectID": "27",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "541",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "542",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "543",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "544",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "545",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "546",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "547",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "548",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "549",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "550",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "551",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "552",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "553",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "554",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "555",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "556",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "557",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "558",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "559",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "560",
          "subjectID": "28",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "561",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "562",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "563",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "564",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "565",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "566",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "567",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "568",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "569",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "570",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "571",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "572",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "573",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "574",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "575",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "576",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "577",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "578",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "579",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "580",
          "subjectID": "29",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "581",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "582",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "583",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "584",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "585",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "586",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "587",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "588",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "589",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "590",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "591",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "592",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "593",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "594",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "595",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "596",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "597",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "598",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "599",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
        {
          "id": "600",
          "subjectID": "30",
          "question": "",
          "A": "",
          "B": "",
          "C": "",
          "D": "",
          "answer": ""
        },
      ]
    };

    db
        .collection("questions")
        .doc("1")
        .set(question)
        .onError((e, _) => print("Error writing document: $e"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set data Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _handleButtonTap();
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Set Data',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
// class _handleButtonTap {}

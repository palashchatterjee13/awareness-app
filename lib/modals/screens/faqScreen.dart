import 'package:app/Drift/drift.dart';
import 'package:app/modals/widgets/homeButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff0f4),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            width: screenWidth(context),
            child: Container(
              margin: EdgeInsets.only(top: paddingTop(context) + screenHeightPercent(5, context), left: 0),
              child: Column(children: <Widget>[
                Text(
                  "COVID-19",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 0.8, color: Color(0xff2d2d2d)),
                ),
                SizedBox(
                  height: screenHeightPercent(7, context),
                ),
                Text(
                  "FAQs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2d2d2d)),
                ),
                SizedBox(height: screenHeightPercent(5, context),),
                Container(
                  width: screenWidthPercent(100, context),
                  height: screenHeightPercent(67, context),
                  margin: EdgeInsets.symmetric(horizontal: screenWidthPercent(8, context)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      ListItem(
                        question: "What is a coronavirus",
                        answer: "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19.",
                      ),
                      ListItem(
                          question: "What is COVID-19",
                          answer: "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019. COVID-19 is now a pandemic affecting many countries globally."
                      ),
                      ListItem(
                        question: "What are the symptoms of COVID-19",
                        answer: "The most common symptoms of COVID-19 are fever, dry cough, and tiredness. Other symptoms that are less common and may affect some patients include aches and pains, nasal congestion, headache, conjunctivitis, sore throat, diarrhea, loss of taste or smell or a rash on skin or discoloration of fingers or toes. These symptoms are usually mild and begin gradually. Some people become infected but only have very mild symptoms. \n\n   Most people (about 80%) recover from the disease without needing hospital treatment. Around 1 out of every 5 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart and lung problems, diabetes, or cancer, are at higher risk of developing serious illness.  However, anyone can catch COVID-19 and become seriously ill.  People of all ages who experience fever and/or  cough associated withdifficulty breathing/shortness of breath, chest pain/pressure, or loss of speech or movement should seek medical attention immediately. If possible, it is recommended to call the health care provider or facility first, so the patient can be directed to the right clinic."
                      ),
                      ListItem(
                          question: "What should I do if I have COVID-19 symptoms and when should I seek medical care",
                          answer: """ If you have minor symptoms, such as a slight cough or a mild fever, there is generally no need to seek medical care. Stay at home, self-isolate and monitor your symptoms. Follow national guidance on self-isolation.

However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever.  Seek medical help.  When you attend the health facility wear a mask if possible, keep at least 1 metre distance from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.

Seek immediate medical care if you have difficulty breathing or pain/pressure in the chest. If possible, call your health care provider in advance, so he/she can direct you to the right health facility."""
                      ),
                      ListItem(
                          question: "How does COVID-19 spread",
                          answer: """ People can catch COVID-19 from others who have the virus. The disease spreads primarily from person to person through small droplets from the nose or mouth, which are expelled when a person with COVID-19 coughs, sneezes, or speaks. These droplets are relatively heavy, do not travel far and quickly sink to the ground. People can catch COVID-19 if they breathe in these droplets from a person infected with the virus.  This is why it is important to stay at least 1 meter) away from others. These droplets can land on objects and surfaces around the person such as tables, doorknobs and handrails.  People can become infected by touching these objects or surfaces, then touching their eyes, nose or mouth.  This is why it is important to wash your hands regularly with soap and water or clean with alcohol-based hand rub.

WHO is assessing ongoing research on the ways that COVID-19 is spread and will continue to share updated findings.    """
                      ),
                      ListItem(
                          question: "Can COVID-19 be caught from a person who has no symptoms",
                          answer: """ COVID-19 is mainly spread through respiratory droplets expelled by someone who is coughing or has other symptoms such as fever or tiredness. Many people with COVID-19 experience only mild symptoms. This is particularly true in the early stages of the disease. It is possible to catch COVID-19 from someone who has just a mild cough and does not feel ill.

Some reports have indicated that people with no symptoms can transmit the virus. It is not yet known how often it happens. WHO is assessing ongoing research on the topic and will continue to share updated findings."""
                      ),
                      ListItem(
                          question: "How can we protect others and ourselves if we don't know who is infected",
                          answer: """ Practicing hand and respiratory hygiene is important at ALL times and is the best way to protect others and yourself.

When possible maintain at least a 1 meter distance between yourself and others. This is especially important if you are standing by someone who is coughing or sneezing.  Since some infected persons may not yet be exhibiting symptoms or their symptoms may be mild, maintaining a physical distance with everyone is a good idea if you are in an area where COVID-19 is circulating. """
                      ),
                      ListItem(
                          question: "What should I do if I have come in close contact with someone who has COVID-19",
                          answer: """If you have been in close contact with someone with COVID-19, you may be infected.

Close contact means that you live with or have been in settings of less than 1 metre from those who have the disease. In these cases, it is best to stay at home.

However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever. Seek medical help. When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.

If you do not live in an area with malaria or dengue fever please do the following:

If you become ill, even with very mild symptoms you must self-isolate
Even if you don’t think you have been exposed to COVID-19 but develop symptoms, then self-isolate and monitor yourself
You are more likely to infect others in the early stages of the disease when you just have mild symptoms, therefore early self-isolation is very important.
If you do not have symptoms, but have been exposed to an infected person, self-quarantine for 14 days.
If you have definitely had COVID-19 (confirmed by a test) self-isolate for 14 days even after symptoms have disappeared as a precautionary measure – it is not yet known exactly how long people remain infectious after they have recovered. Follow national advice on self-isolation."""
                      ),
                      ListItem(
                          question: "What does it mean to self-isolate",
                          answer: """Self-isolation is an important measure taken by those who have COVID-19 symptoms to avoid infecting others in the community, including family members.

Self-isolation is when a person who is experiencing fever, cough or other COVID-19 symptoms stays at home and does not go to work, school or public places. This can be voluntarily or based on his/her health care provider’s recommendation. However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever. Seek medical help. When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.

If you do not live in an area with malaria or dengue fever please do the following:

-  If a person is in self-isolation, it is because he/she is ill but not severely ill (requiring medical attention)

have a large, well-ventilated with hand-hygiene and toilet facilities
If this is not possible, place beds at least 1 metre apart
Keep at least 1 metre from others, even from your family members
Monitor your symptoms daily
Isolate for 14 days, even if you feel healthy
If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible
Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home."""
                      ),
                      ListItem(
                          question: "What should I do if I have no symptoms, but I think I have been exposed to COVID-19? What does it mean to self-quarantin",
                          answer: """To self-quarantine means to separate yourself from others because you have been exposed to someone with COVID-19 even though you, yourself, do not have symptoms.During self-quarantine you monitor yourself for symptoms.  The goal of the self-quarantine is to prevent transmission.  Since people who become ill with COVID-19 can infect people immediately self-quarantine can prevent some infections from happening.  .

In this case:

Have a large, well-ventilated single room with hand hygiene and toilet facilities
If this is not available place beds at least 1 metre apart.
Keep at least 1-metre distance from others, even from your family members.
Monitor your symptoms daily
Self-quarantine for 14 days, even if you feel healthy
If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible.
Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home.
However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever.  Seek medical help.  When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice. """
                      ),
                      ListItem(
                          question: "What is the difference between self-isolation, self-quarantine and distancing",
                          answer: """ Quarantine means restricting activities or separating people who are not ill themselves but may have been exposed to COVID-19. The goal is to prevent spread of the disease at the time when people just develop symptoms..

Isolation means separating people who are ill with symptoms of COVID-19 and may be infectious to prevent the spread of the disease.

Physical distancing means being physically apart. WHO recommends keeping at least 1-metre distance from others. This is a general measure that everyone should take even if they are well with no known exposure to COVID-19. """
                      ),
                      ListItem(
                          question: "Can children or adolescents catch COVID-19",
                          answer: """Research indicates that children and adolescents are just as likely to become infected as any other age group and can spread the disease.

Evidence to date suggests that children and young adults are less likely to get severe disease, but severe cases can still happen in these age groups.

Children and adults should follow the same guidance on self-quarantine and self-isolation if there is a risk they have been exposed or are showing symptoms. It is particularly important that children avoid contact with older people and others who are at risk of more severe disease."""
                      ),
                      ListItem(
                          question: "What can I do to protect myself and prevent the spread of disease",
                          answer: """ Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority. Most countries around the world have seen cases of COVID-19 and many are experiencing outbreaks. Authorities in China and some other countries have succeeded in slowing their outbreaks. However, the situation is unpredictable so check regularly for the latest news.

You can reduce your chances of being infected or spreading COVID-19 by taking some simple precautions:

Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water. Why? Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.
Maintain at least 1 metre distance between yourself and others. Why? When someone coughs, sneezes, or speaks they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person has the disease.
Avoid going to crowded places. Why? Where people come together in crowds, you are more likely to come into close contact with someone that has COVID-19 and it is more difficult to maintain physical distance of 1 metre.
Avoid touching eyes, nose and mouth. Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and infect you.
Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately and wash your hands. Why? Droplets spread virus. By following good respiratory hygiene, you protect the people around you from viruses such as cold, flu and COVID-19.
Stay home and self-isolate even with minor symptoms such as cough, headache, mild fever, until you recover. Have someone bring you supplies. If you need to leave your house, wear a mask to avoid infecting others. Why? Avoiding contact with others will protect them from possible COVID-19 and other viruses.
If you have a fever, cough and difficulty breathing, seek medical attention, but call by telephone in advance if possible and follow the directions of your local health authority. Why? National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.
Keep up to date on the latest information from trusted sources, such as WHO or your local and national health authorities. Why? Local and national authorities are best placed to advise on what people in your area should be doing to protect themselves."""
                      ),
                      ListItem(
                          question: "Is there a vaccine, drug or treatment for COVID-19",
                          answer: """ While some western, traditional or home remedies may provide comfort and alleviate symptoms of mild COVID-19, there are no medicines that have been shown to prevent or cure the disease. WHO does not recommend self-medication with any medicines, including antibiotics, as a prevention or cure for COVID-19. However, there are several ongoing clinical trials of both western and traditional medicines. WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19 and will continue to provide updated information as soon research results become available.

The most effective ways to protect yourself and others against COVID-19 are to:

Clean your hands frequently and thoroughly
Avoid touching your eyes, mouth and nose
Cover your cough with the bend of elbow or tissue. If a tissue is used, discard it immediately and wash your hands.
Maintain a distance of at least 1 metre from others. """
                      ),
                      ListItem(
                          question: "Does WHO recommend wearing medical masks to prevent the spread of COVID-19",
                          answer: """Currently, there is not enough evidence for or against the use of masks (medical or other) in healthy individuals in the wider community. However, WHO is actively studying the rapidly evolving science on masks and continuously updates its guidance.

Medical masks are recommended primarily in health care settings, but can be considered in other circumstances (see below). Medical masks should be combined with other key infection prevention and control measures such as hand hygiene and physical distancing.

Healthcare workers
Why? Medical masks and respirators such as N95, FFP2 or equivalent are recommended for and should be reserved for, healthcare workers while giving care to patients. Close contact with people with suspected or confirmed COVID-19 and their surrounding environment are the main routes of transmission, which means healthcare workers are the most exposed.

People who are sick and exhibiting symptoms of COVID-19
Why? Anyone who is sick, with mild symptoms such as muscle aches, slight cough, sore throat or fatigue, should isolate at home and use a medical mask according to WHO’s recommendation on home care of patients with suspected COVID-19. Coughing, sneezing or talking can generate droplets that cause can spread the infection. These droplets can reach the face of others nearby and land on the surrounding environment. If an infected person coughs, sneezes, or talks while wearing a medical mask, this can help to protect those nearby from infection. If a sick person needs to go to a health facility they should wear a medical mask.

Anyone taking care of a person at home who is sick with COVID-19
Why? Those caring for individuals who are sick with COVID-19 should wear a medical mask for protection. Again, close, frequent and prolonged contact with someone with COVID-19 puts caretakers at high risk. National decision makers may also choose to recommend medical mask use for certain individuals using a risk-based approach. This approach takes into consideration the purpose of the mask, risk of exposure and vulnerability of the wearer, the setting, the feasibility of use and the types of masks to be considered."""
                      ),
                      ListItem(
                          question: "How to properly wear a medical mask",
                          answer: """ If you choose to wear a mask:

Before touching the mask, clean hands with an alcohol-based hand rub or soap and water
Take the mask and inspect it for tears or holes.
Orient which side is the top side (where the metal strip is).
Ensure the proper side of the mask faces outwards (the coloured side).
Place the mask to your face. Pinch the metal strip or stiff edge of the mask so it moulds to the shape of your nose.
Pull down the mask’s bottom so it covers your mouth and your chin.
Do not touch the mask while you are wearing it for protection.
After use, take off the mask with clean hands; remove the elastic loops from behind the ears while keeping the mask away from your face and clothes, to avoid touching potentially contaminated surfaces of the mask.
Discard the mask in a closed bin immediately after use. Do not reuse the mask.
Perform hand hygiene after touching or discarding the mask – Use alcohol-based hand rub or, if visibly soiled, wash your hands with soap and water.
Be aware that there is a global shortage of medical masks (both surgical masks and N95 masks). These should be reserved as much as possible for health care workers.

Remember that  masks are not a substitute for other, more effective ways to protect yourself and others against COVID-19 such as frequently washing your hands, covering your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter from others. See basic protective measures against the new coronavirus for more information.

Follow the advice of your national health authority on the use of masks."""
                      ),
                      ListItem(
                          question: "How long does it take after exposure to COVID-19 to develop symptoms",
                          answer: """ The time between exposure to COVID-19 and the moment when symptoms start is commonly around five to six days but can range from 1 – 14 days."""
                      ),
                      ListItem(
                          question: "What is the connection between COVID-19 and animals",
                          answer: """ COVID-19 is spread through human-to-human transmission.

We already know a lot about other viruses in the coronavirus family and most of these types of viruses have an origin in animals. The COVID-19 virus (also called SARS-CoV-2) is a new virus in humans. The possible animal source of COVID-19 has not yet been confirmed but research is ongoing.

WHO continues to monitor the latest research on this and other COVID-19 topics and will update, as new findings are available."""
                      ),
                      ListItem(
                          question: "Can I catch COVID-19 from my pet or other animals",
                          answer: """ Several dogs and cats (domestic cats and tigers) in contact with infected humans have tested positive for COVID-19. In addition, ferrets appear to be susceptible to the infection. In experimental conditions, both cats and ferrets were able to transmit infection to other animals of the same species. However, there is no evidence that these animals can transmit the disease to humans and spread COVID-19. COVID-19 is mainly spread through droplets produced when an infected person coughs, sneezes, or speaks.

Minks raised in farms have also been detected with the virus. Most likely, they have been infected by farm workers. In a few instances, the minks that were infected by humans have transmitted the virus to other people. These are the first reported cases of animal-to-human transmission.

It is still recommended that people who are sick with COVID-19 and people who are at risk limit contact with companion and other animals. When handling and caring for animals, basic hygiene measures should always be implemented. This includes hand washing after handling animals, their food or supplies, as well as avoiding kissing, licking or sharing food."""
                      ),
                      ListItem(
                          question: "How long does the virus survive on surfaces",
                          answer: """ The most important thing to know about coronavirus on surfaces is that they can easily be cleaned with common household disinfectants that will kill the virus. Studies have shown that the COVID-19 virus can survive for up to 72 hours on plastic and stainless steel, less than 4 hours on copper and less than 24 hours on cardboard.

As, always clean your hands with an alcohol-based hand rub or wash them with soap and water. Avoid touching your eyes, mouth, or nose."""
                      ),
                      ListItem(
                          question: "How to grocery shop safely",
                          answer: """ When grocery shopping, keep at least 1-metre distance from others and avoid touching your eyes, mouth and nose. If possible, sanitize the handles of shopping trolleys or baskets before shopping. Once home, wash your hands thoroughly and also after handling and storing your purchased products.

There is currently no confirmed case of COVID-19 transmitted through food or food packaging."""
                      ),
                      ListItem(
                          question: "How to wash fruits and vegetables",
                          answer: """ Fruits and vegetables are important components of a healthy diet. Wash them the same way you should do under any circumstance: before handling them, wash your hands with soap and water. Then, wash fruits and vegetables thoroughly with clean water, especially if you eat them raw."""
                      ),
                      ListItem(
                          question: "Are antibiotics effective in preventing or treating COVID-19",
                          answer: """ No. Antibiotics do not work against viruses; they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. In hospitals physicians will sometimes use antibiotics to prevent or treat secondary bacterial infections which can be a complication of COVID-19 in severely ill patients. They should only be used as directed by a physician to treat a bacterial infection."""
                      ),
                      ListItem(
                          question: "Can I catch COVID-19 from the faeces of someone with the disease",
                          answer: """While initial investigations suggest the virus may be present in faeces in some cases, to date, there have not been reports of faecal-oral transmission of COVID-19. Additionally, there is no evidence to date on the survival of the COVID-19 virus in water or sewage.

WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings on this topic."""
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          HomeButton(),
        ],
      ),
    );
  }
}

class ListItem extends StatefulWidget {

  final String question;
  final String answer;
  ListItem({@required this.question, @required this.answer});

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {

  double h = 0;
  double t = 0;
  IconData i = Icons.keyboard_arrow_down;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                if (h == 0) {
                  double lettersLineCanHold = screenWidthPercent(70, context)/12;
                  double totalLetters = widget.answer.length.toDouble();
                  h = (totalLetters/lettersLineCanHold).ceil().toDouble()*17;
                  t = 5;
                  i = Icons.keyboard_arrow_up;
                  //print(h);
                } else {
                  h = 0;
                  t = 0;
                  i = Icons.keyboard_arrow_down;
                }
              });
            },
            child: Row(
              children: <Widget>[
                Container(
                  width: screenWidthPercent(70, context)-25,
                  //color: Colors.redAccent,
                  margin: EdgeInsets.symmetric(horizontal: screenWidthPercent(5, context)),
                  child: Text(widget.question,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff2d2d2d),
                      letterSpacing: 0.5,
                    ),),
                ),
                Icon(
                  i,
                  color: Color(0xff2d2d2d),
                  size: 25,
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 250),
            width: screenWidthPercent(80, context),
            margin: EdgeInsets.symmetric(horizontal: screenWidthPercent(5, context)),
            padding: EdgeInsets.only(top: t),
            height: h,
            child: Text(widget.answer, style: TextStyle(
              fontSize: 17,
              color: Color(0xff2d2d2d),
              letterSpacing: 0.5,
            ),),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

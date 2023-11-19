Otieno Maurice:
The English Premier league tables
The English Premier League is the best football(soccer) league in the world. It draws its players from all parts of the world due to its competitiveness and the large sums of money involved in players salaries and sales. I love watching the premier league especially during the weekends before doing my homework. It helps me relax, have a good time and connect with my friends (make fun of the teams they support). I like to remember as much information about as many players as possible and the statistics for each team in the league. This season (2023/2024) is ongoing and I would like to keep track of changes in stats and personnel per team. It is for this reason that I wrote code to help process this information. Specifically, I would like to see the information graphically rather than numerically printed on the screen. 
The program I wrote should function as follows:
If a user presses a key, a bar Graph of information corresponding to the pressed key should be displayed. The keys I would like to use are W, D, L, I, S, C, and F. The information displayed includes the team’s name and the data requested by the key. The keys should function as follows:
if the user presses W - win data should be graphed
 if the user presses L - Loss data should be graphed
 if the user presses D - draw data should be graphed
 if the user presses I - Indiscipline data should be graphed
 if the user presses S - Goals scored data should be graphed
 if the user presses C - Goals conceded should be graphed
 if the user presses F - Goal difference data should be graphed
 if nothing is pressed or any other key is pressed the data for number of points should be graphed

I designed this sketch by first loading all the images required. I then sort the images into three categories representing the logo, captain image and best player image. I then loaded the information in the information in the premier league table excel csv file as an array of strings. I then used this array to draw the bar graphs while displaying the required images.
At the same time, if the user hovers the mouse over a particular team on the bar graph, the images of the team logo and the names of the team, team captain and team’s best player should appear on the screen.
The design of this sketch was quite time consuming but I am glad I managed to complete it. The process of displaying images at the appropriate region on the screen was quite challenging. I had to individually figure out the offset for individual images at some point. The disadvantage of this sketch is that it only 
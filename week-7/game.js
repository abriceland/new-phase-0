// // Solo challenge

// Print an introduction that explains the game.
// Ask user if she wants to play = yes or no
// Print first scenario to screen in pop-up box with "yes" or "no" options
// Go through each scenario with a pop-up
// Take input and print appropriate message 



function prairieGame() {
   
    console.log("Welcome to the Prairie!  You're little Laura Ingalls and you're living on the " +
            "banks of Plum Creek near Walnut Grove, Minnesota in the 1870s.  In this game, you'll " + 
            "experience what it was like to be a real American pioneer and gain points for showing" +
            "initiative and gumption!");

    console.log("Are you ready to take the plunge?");

    var participate = prompt("Type yes to ride the covered wagon west or no to stay back east!");
        if (participate==="yes") {
            console.log("Onward ho!");
        } else {
             console.log("Clearly you need some toughening up, weakling!  Head west to get some calluses on " +
                        "those lily-white hands!");
        }

        var i = 0;    
        // Sleep inside or out?
        console.log("You're moving into a dugout next to the creek with your Ma, Pa, older sister Mary, younger " +
            "sister Carrie and your bulldog Jack.  Vines of morning glories surround your new front door, but the " +
            "dugout itself is small and dim, lit only by one tiny window.  You can hear wolves howling outside.  " +
            "Would you prefer to sleep inside, safe and snug, or outside in the waving prairie grasses?");
        
        var answer = prompt("If you would prefer to sleep in the dugout, please type yes.  If you would prefer to " +
            "sleep outside on the prairie, please type no in the box below.  Use only lowercase letters!");
            
            if (answer==="yes") {
                console.log("You're a good, obedient girl.  You soon get used to sleeping indoors again."); 
            }
            else if (answer==="no") {
                i++
                console.log("You have the spirit of a true pioneer, but get a whipping for talking back to your Ma!");     
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");
            }

        // Deep water or shallow?
        console.log("Pa takes the family swimming in the deep water bend of the creek.  It lies upstream and has " +
                "white pebbled sand in its shallows.  Further out the water is dark and temptingly cool on such a hot " +
                "day.  You've never been swimming before and the water feels delicious against your skin.  Do you venture " +
                "out into the deep water that you've been told to stay away from or remain with your saintly sister " +
                "Mary, who is playing sedately in the shallows?")
        
        var answer = prompt("If you want to go into the deep water, please type yes.  If you would prefer to " +
                "stay in the shallows, please type no in the box below.  Use only lowercase letters!");
            
            if (answer==="yes") {
                i++
                console.log("You get ducked!  Something grabs your leg and pulls you underwater.  You can't breathe.  " +
                        "Then you're suddenly free and come up to see that it was your Pa playing a trick on you!  " +
                        "He says, 'Do you see what can happen?  Never come near this deep water by yourself!");
            }
            else if (answer==="no") {
                console.log("You don't have much fun, but your Ma gives you approving smiles and you bask in her " +  
                        "favor.  But you are still warned not to come near the deep water ever on your own.");
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");             
            }
        
        // Swim alone or forgo temptation?
        console.log("The next day is very hot.  Mary doesn't want to play with you outside, so you're playing all by " +
                    "yourself on the prairie under a scorching sun.  You get thirsty and start home to get a drink of " +
                    "water.  Then you remember the deep water and how wonderful it felt.  It would feel just as refreshing " +
                    "today.  Do you disobey your parents and go to the deep water or be a good girl and go home to get a " +
                    "drink there?");
        
        var answer = prompt("If you want to go to the deep water, please type yes.  If you would prefer to go home " +
                            "and get a drink of water there, please type no in the box below.  Use only lowercase letters!");
            if (answer==="yes") {
                i++
                console.log("Oh, no!  On the way to the deep water, you encounter a strange animal on the path.  It has " +
                        "gray fur that bristles and bright beady eyes.  Instead of running away, it flattens itself " +
                        "onto the path until it looks like fur with staring eyes.  You poke it with a stick, but it " +
                        "snarls at you, so you run home.  Since you were disobedient in your heart, you confess to " +
                        "Pa.  He tells you it was a badger.  He doesn't whip you, but punishes you by making you stay " +
                        "inside with Ma for one whole interminable day!")
            }
            else if (answer==="no") {
                console.log("You still feel hot and dusty, so you splash around in the shallows near the dugout.  It " +
                        "isn't nearly as much fun as the deep water, but at least your conscious is clear.");
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");    
            }
            
        // Straw stack quandry
        console.log("It's harvest time!  The wheat crop isn't much, but Pa cuts lots of the tall prairie grass and " +
                    "lays it out to dry in the hot sun to become straw.  Then he works hard to pitch it into the wagon " +
                    "and create a high stack of it near the stable.  It is exhausing work and Pa is too tired even to " +
                    "speak much that night.  You come out with Mary the next morning and see the shining stack of straw.  " +
                    "You both climb the stack and keep sliding down it until the stack disappears.  Only jumbled straw " +
                    "lies on the prairie grass all around you.  You go home and are model little girls until Pa comes " + 
                    "home for dinner.  He looks at you sternly and tells you not to slide down the straw stack anymore.  " +
                    "But after dinner, there the stack is again, piled high again and tempting.  You climb up to the top, " +
                    "despite Mary's protestations, and roll down the stack.  That's even more fun than sliding!  Do you " +
                    "continue rolling down the straw stack and risk Pa's disapproval or stop and go play in the creek?");
        
        var answer = prompt("If you want to keep playing on the straw stack, please type yes.  If you would prefer " +
                    "to be good and play in the creek, please type no in the box below.  Use only lowercase letters!");
            if (answer==="yes") {
                i++
                console.log("Uh, oh!  You roll down the straw stack so many times that you pull it down just like before!  " +
                        "When Pa asks with a stern look if you slid down the straw stack, you tell him the truth, " +
                        "that you only rolled down it this time.  His blue eyes twinkle, but he tells you, 'Leave the  " +
                        "straw stack alone from now on.  We need it to feed the cattle this winter.'");
            }
            else if (answer==="no") {
                console.log("The sounds of the creek fill your ears and you play by pulling the reeds into pieces and putting " +
                        "them back together.  It isn't nearly as much fun as the straw stack, but you're obeying your parents.");
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");    
            }
        
        // Rescue the straw stacks!
        console.log("Pa makes a trip to town and takes Ma and Carrie with him, dressed in their very best.  You and Mary are " +
                    "old enough to stay home and take care of things while they're away.  You behave yourself by playing in " +
                    "the creek, eating the cold lunch Ma left for you and washing the dishes.  When you go out to " +
                    "play again, Jack is staring across the creek.  A small herd of cattle are at Pa's straw stacks, eating " +
                    "and trampling them down.  Their herder Johnny Johnson is nowhere in sight.  They could very well leave " +
                    "nothing for your cattle to eat in the winter!");
        console.log("Mary is too frightened to go over and try to stop them.  Do you pull her over the bridge with you or " +
                    "stay in the dugout and hope Johnny Johnson comes to find his cattle?")
        
        var answer = prompt("If you want to try to chase the cattle away from the stacks for Pa, please type yes.  " +
                    "If you are too scared of the cattle and want to stay home, please type no in the box below.  " +
                    "Use only lowercase letters!");
            if (answer==="yes") {
                i++
                console.log("You're strong as a little French horse and pull Mary with you across the creek and up to the " +
                    "stacks. Jack is already there, barking and running after the cattle.  You spy a big stick, pick " +
                    "it up and start chasing them away from the stacks.  The cattle run wild, but stay near the " +
                    "stacks.  Finally, one cow runs directly at you with the herd behind her.  You think you're " +
                    "going to be trampled, but she swerves toward the open prairie just in time and the rest of the " +
                    "herd follows.  You continue to chase them further and further away from the stacks until you " +
                    "find Johnny Johnson asleep in the grass.  Unfortunately, you can't tell him what happened, " +
                    "because he only speaks Norwegian.  But you saved the straw stacks and when Pa gets back, he " +
                    "says you did exactly the right thing!  He gives you some storebought candy, crinkly and " +
                    "brown, as your reward.")
            }
            else if (answer==="no") {
                console.log("You stay in the dugout to keep away from the sight of the cattle ruining Pa's straw stacks.  " +
                    "After an hour, Johnny Johnson comes running up and drives them away.  When Pa and Ma get home, " +
                    "they are concerned about losing the straw.  Pa has to go out and cut more grass to dry, so " +
                    "the cattle won't starve.  He's too busy to give you the present he brought from the store.");
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");    
            }
        
        // Christmas wishes
        console.log("It's Christmas time and your head is full of the presents you want from Santa Claus - candy, new dresses, " +
                    "new clothes for your doll Charlotte. But Pa needs horses to sow and harvest the big wheat crop he  " +
                    "wants to plant in the spring.  Ma suggests that if everyone, including Laura and Mary, wish for " +
                    "horses for Christmas, maybe Santa Claus will bring them!  After all, Christmas is about being " +
                    "unselfish and wanting others to be happy.  Do you want to wish for horses to make Pa happy or ask " +
                    "Santa Claus for candy and clothes?")
        
        var answer = prompt("If you want to sacrifice your Christmas presents to make Pa happy, please type yes.  " +
                    "If you want to choose your own presents, please type no in the box below.  " +
                    "Use only lowercase letters!");
            if (answer==="yes") {
                i++
                console.log("You want to make Pa happy and ask Santa Claus for horses for Christmas.  " +
                    "You don't hang up your stocking on Christmas Eve, but Pa says that little girls should " +
                    "always hang up their stocking.  When you wake in the morning, there is a bulge in yours " +
                    "and in Mary's too!  You both got six pieces of beautiful, colored candy, just what you " +
                    "wanted.  Then Ma hurries you into your warm clothes to go to the stable with Pa.  In the " +
                    "place of the heavy oxen stand two beautiful horses - Christmas horses.  Pa is very happy.");
            }
            else if (answer==="no") {
                console.log("You hang up your stocking on Christmas Eve with a heavy heart.  Then you turn to Ma and say, " +
                    "'I wish I'd asked Santa Claus for horses for Pa.'  Ma replies, 'It's never too late, Laura.  " +
                    "So you ask Santa Claus with your whole heart to bring Pa horses.  When you wake in the morning, " +
                    "there is a bulge in your stocking.  You got colorful, storebought candy!  And there are horses " +
                    "in the barn for Pa in the oxen's stalls!");
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");    
            }                
        
        // Ma's surprise - to tell or not to tell?
        console.log("It's springtime!  Pa has planted wheat with the Chrismas horses and the young green shoots " +
                "promise an excellent crop. Pa is so happy that he has built a new house on the other side of the " +
                "creek, made out of wide sawn boards.  You help him by running and fetching things and are there " +
                "when he puts in the new glass windows and brings home a surprise for Ma - a brand-new cooking stove!  " +
                "He tells you to keep it a secret.  When Ma asks later if he bought extra stovepipe for the old " +
                "stove, do you giggle, but stay quiet or blurt out that he bought her a new one?");
        
        var answer = prompt("If you want to keep quiet, please type yes.  If you would prefer tell Ma about the " +
                        "new stove, please type no in the box below.  Use only lowercase letters!");
            if (answer==="yes") {
                i++
                console.log("You stay quiet and watch as Ma sees the house for the first time on moving day.  She " +
                        "admires the golden wood walls and the clear glass windows, saying that she doesn't deserve " +
                        "such luxuries.  When she sees the brand-new stove, she puts her hand to her mouth and " +
                        "exclaims, 'Oh, Charles!'  You wriggle in excitement at your part in keeping the secret!");
            }
            else if (answer==="no") {
                console.log("You say, 'Pa bought you a new stove, Ma!'  Ma says she doesn't need it and Pa looks crestfallen. " +
                        "Even Mary gives you a disappointed look. She was able to keep the secret after all!  You are too " +
                        "upset to eat your dinner and go to bed hungry. ");
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");    
            }                
        
        // First day of school
        console.log("The new house is only two and a half miles from the town, close enough for you to go to school!  " +
                "You've never been to school before, so you don't know what to expect.  On the great day, Ma " +
                "puts on your Sunday dress and braids your hair so tightly it hurts. She gives you a small tin " +
                "pail with your lunch in it under a clean cloth.  You walk in your bare feet along side the dusty " +
                "path to keep your feet clean.  After a long time, you finally see the town, houses like tiny blocks " +
                "far away.  Once there you follow the loud sounds of children playing and find the school.  You " +                    "realize that your dress is shorter than the others and a girl named Nellie Olsen calls you a " +
                "country girl and wrinkles her nose at you.  Do you ignore her or call her a name back, " +
                "knowing Ma would disapprove?");
        
        var answer = prompt("If you want to ignore her, please type yes.  If you want to talk back to her, " +
                        "please type no in the box below.  Use only lowercase letters!");
            if (answer==="yes") {
                i++
                console.log("A beautiful young lady stands on the steps of the school building and calls to you and Mary. " +
                        "You bite your tongue and walk past Nellie Olsen to enter the building.  Mary shows the teacher how " +
                        "much she has learned, but you don't even know all of your letters yet!  'Laura, you will " +
                        "start at the beginning,' the teacher says.  'Please take a seat on the first row.'");
            }
            else if (answer==="no") {
                console.log("You say, 'But I have the best Pa in the world!'  Everyone in the schoolyard laughs.  " +
                        "A beautiful young lady stands on the steps of the school building and calls to you and Mary.  " +
                        "'I'm the teacher here.  What is your name, new little girl?' she asks.  You tell her. " +
                        "'Well, Laura, we don't say here that one of us has a better Pa than another student.  I heard " +
                        "Nellie call you a country girl and I will speak to her.  But another outburst like that from you " +
                        "and I will have to rap your knuckles with my ruler!'  Subdued, you sit down and behave.")
            }     
            else {
                console.log("Please type yes or no in all lowercase letters!");   
                }    

        if (i >= 4) {
            console.log("You are finished with the Praire Game!  Congratulations!  You've showed just the spunk and " +
                        "determination that built America!");
        }
         else {
            console.log("You are finished with the Praire Game!  You survived, but need to show more grit to make " +
                        "it out on the prairie!");
        }
}

prairieGame();


// Reflection

// What was the most difficult part of this challenge?

// Getting my pop-up boxes to work as I wanted them to, along with making sure the JS syntax was correct.


// What did you learn about creating objects and functions that interact with one another?

// I couldn't think of a game with objects and functions that interacted.  I had more functions initially, but had 
// a hard time getting them to work.  As a workaround, I deleted most of them and the code works. 


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do 
// they work?

// No, I didn't refactor and didn't find any built-in methods. I'm just happy it actually works and I built it. 


// How can you access and manipulate properties of objects?

// You access the properties of objects with a simple dot notation or square brackets.  




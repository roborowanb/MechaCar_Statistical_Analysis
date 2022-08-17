# MechaCar_Statistical_Analysis

Jeremy has been selected to lead the Data and Analytics team of Autos R Us. His data analytics will propel managerial decision making and gain competitive advantages in the market. On top of running analysis on the company’s own products, as seen in the MechaCarChallenge.R file, Jeremy will also leverage analytics to understand competitor products, in order to position their own product offering effectively. 

## Study Design: MechaCar vs Competition
Luckily for Jeremy, Autos R Us is at the pinnacle of automotive engineering. In other words, they are top dogs when it comes to building the fastest motorized ground vehicles on the planet. No expenses are spared. Because of the companies global reputation, Jeremy decides it would be best suited for him to exemplify the companies product in the form of testing for straightaway speed, as opposed to things like cost or efficiency.

### Metrics
He can do this in the form of a 0-60mph test. These tests are a reliable way to test the overall speed of the car because it involves a full pedal-to-the-medal approach to the car’s utility. The timer starts when the car is idle, and then ends when the car hits a speed of 60mph. There are other speed tests that we could use for our study, but 0-60mph times are the best way to test speed within the limits of practical usage.  

### Hypothesis
H0: If MechaCar isn’t the fastest car on the market, then it will not have a lower 0-60mph time over the course of fifty tests. <br />
HA: If MechaCar is the fastest car on the market, then it will have a lower 0-60mph time over the course of fifty tests. 

### Statistical Test
With our data, we will perform a one tailed, two sample t-test between MechaCar and each of the competing cars. In this scenario, we have the option to perform a one sample t test, drawing out Mecha car from the rest of the population to see if there is a statistically significant difference. But it would not provide the same conclusiveness as doing individual two sample tests that will one by one conclude that MechaCar is the fastest. 

### Data
Jeremy will start with a list of cars in the market that could be considered the fastest. Lamborghini, Ferrari, Mclaren, Mercedes, Aston Martin, are all sure to be included in the study that will exemplify how MechaCar is truly the apex vehicle. On a day with ideal driving conditions, at a professional race track with licensed testing equipment, all these cars will have their tests performed in the same manner by the same driver, fifty times each. This will be considered an unpaired test because we are making the comparison across independent groups. 

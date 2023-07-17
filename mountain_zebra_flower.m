% This code file will outline a series of instructions for matlab in
% creating a 'Food Forest'.

%First, create an array of plants
plantArray = {'apple','pear','plum','pineapple','banana','mango','coconut','persimmon','olive','fig','loquat','date','lemon','avocado','blackberry','blueberry','raspberry','strawberry','pomegranate'};

%Second, generate a random seed value to determine the order of the plants
rng('shuffle');

%Third, use the random seed to generate a random array of the plants
plantArrayRandom = plantArray(randperm(numel(plantArray)));

%Fourth, define number of rows and columns of the 'Food Forest'
row = 8;
col = 15;

%Fifth, define a 2-dimensional array to store the 'Food Forest'
forestArray = zeros(row,col);

%Sixth, define a counter variable to keep track of the number of plants
plantCounter = 1;

%Seventh, loop the counter variable over the array to place each plant
for i = 1:row
    for j = 1:col
        forestArray(i,j) = plantArrayRandom(plantCounter);
        plantCounter = plantCounter + 1;
    end
end

%Eighth, display the 'Food Forest'
disp(forestArray);
  int_count=[30813,30041, 26582, 26122, 25483, 24454, 23813, 23001, 22145, 21136, 20465, ...
      19370, 18329, 16698, 15475, 14559, 13930, 13062, 12371, 12029, 11335, 10855, ...
      10093, 9883, 9496, 9007, 8139, 7964, 7530, 7259, 7098, 7106, 7053, 6845, 6659, ...
      6820, 6625, 6116, 5411, 4591, 3193, 1830, 994, 939, 218, 138, 81, 58, 42, 38, 53];
  
  volts=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2,2.1, ...
      2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5];
  
  errorbar(volts,int_count,int_count.^(1/2),'')
  grid on
  hold on
  
  dint_count=gradient(int_count(:))./gradient(volts(:));
  plot(volts,dint_count./int_count)
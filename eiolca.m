%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Script by PDC for EIOLCA demonstration
%This file loads data from USEEIOv2.01-411.xlsx 
%The script calculates economic, social, and environmental impact/outputs

clear; %clearing the workspace
load data.mat;

demand=zeros(411,1);

%demand(147)=1000000; %sets a demand for $1,000,000 in the automobile manufacturing sector (USEEIO 336111).  
                     % This line of code has to be edited to match your product structure tree.
%demand(1)=1000000; %sets demand for $1,000,000 in the Oilseed Farming (USEEIO 1111AO)
%demand(361)=1000000; %sets demand for $1,000,000 in university/college/professional education (USEEIO 611A00)


%Loading demand vector from Excel file
T = readtable('EIOLCA_Template.xlsx','Sheet','Inputs');
demand=table2array(T(:,4));

%Calculations are performed below

x=inv(eye(411)-A)*demand; %calculates induced activity for each economic sector
xDirect = (eye(411)+A)*demand; %calculates direct economic activity
sectorOutputs = (x'.*R)'; %calculates the ouputs for each economic sector (sector X output)
aggregateOutputs = [R*x;sum(x)];
GHG=[x.*R(9,:)',xDirect.*R(9,:)']; %Total and Direct GHG Emissions by Sector






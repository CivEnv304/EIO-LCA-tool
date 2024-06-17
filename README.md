# EIO-LCA tool

This is the Matlab version of the 2012 industry-by-industry model of the US economy. It is intended for users with an advanced understanding of economic input-output life cycle assessment. The file loads data from [USEEIOv2.01-411](https://github.com/USEPA/useeior/tree/v1.0.0). The script will calculate economic, social, and environmental impact/outputs. You need to have Matlab and Microsoft Office installed on your computer to use this tool fully.

## Files included in this archive

### data.mat: 
Matlab storage file that stores all matrices used in the model, including the current Economic matrices and environmental matrix.

  A: The 2012 industry-by-industry direct requirements matrix from USEEIOv2.01-411.
  
  R: The direct + indirect impact coefficients

### EIOLCA_Template.xlsx:
The file includes the input data for the Matlab model, and the output file shows the model results. The spreadsheets are:

  Inputs: the input used in the model. It is defined by users and measured by dollars of activity in the corresponding economic sector. 
  
  Summary Outputs: The outputs are summarized by the list of economic, social, and environmental impacts that are considered within this Matlab model.

  Economic Activity: The output of economic activities for each sector, including total and direct output.

  GHG Emissions: The total and direct output of CO2 emissions of each economic sector.

  Sector Outputs: The output of all metrics for all economic sectors.

  ### EIOLCA_Template - Copy.xlsx:
  A copy of the EIOLCA_Template file. 

  ### eiolca.m:
  Matlab model code. 

  ## Model Use:

  To use this Matlab model, users need to define the values of their target's economic activities (in 2012 dollars) in column D (y$) of the spreadsheet "Inputs" in EIOLCA_Template.xlsx. For example, to model $1000 of 'Drinking water and wastewater treatment,' 1000 should be inserted into cell D25. Note that multiple economic activities could be defined to represent the LCA goal in column D. 

  The remaining activity takes place in Matlab. First, make sure that the current working directory in Matlab is the directory in which EIOLCA_Template.xlsx resides. The changes to the EIOLCA_Template.xlsx need to be saved before proceeding to run the Matlab code. Run the Matlab code, and there will be output files in Matlab called 'aggregateOutputs,' 'x,' 'direct,' 'GHG,' and 'sectorOutputs.' Users may copy and paste them into the corresponding spreadsheet to analyze these output data with headings, names, and codes of corresponding sectors. 

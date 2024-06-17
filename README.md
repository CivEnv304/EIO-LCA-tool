# EIO-LCA tool

This is the Matlab version of the 2012 industry-by-industry model of the US economy. It is intended for users with an advanced understanding of economic input-output life cycle assessment. The file loads data from [USEEIOv2.01-411](https://github.com/USEPA/useeior/tree/v1.0.0). The script will calculate economic, social, and environmental impact/outputs. You need to have Matlab and Microsoft Office installed on your computer to use this tool fully.

## Files included in this archive

* data.mat: Matlab storage file that stores all matrices used in the model, including the current Economic matrices and environmental matrix.

  A: The 2012 industry-by-industry direct requirements matrix from USEEIOv2.01-411.
  R: The direct + indirect impact coefficients

* EIOLCA_Template.xlsx: The file includes the input data for the Matlab model, and the output file shows the model results. The spreadsheets are:

  Inputs: the input used in the model. It is defined by users and measured by dollars of activity in the corresponding economic sector. 
  
  Summary Outputs: The outputs are summarized by the list of economic, social, and environmental impacts that are considered within this Matlab model.

  Economic Activity: The output of economic activities for each sector, including total and direct output.

  

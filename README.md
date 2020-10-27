# Sirius-APIs
This repository contains the R package Rsirius.
**Rsirius** is a SIRIUS API written in the programming language R.
It enables the use of SIRIUS' REST service and its provided functions in R. 
It has to be considered that this API is currently not supporting any computations, 
e.g. the computation of fragmentation trees or the structure elucidation. 
At this moment the REST API enables the request of some informations that are already computed and 
stored in your local project space. 
For example, you can get all computed molecular formula candidates, fragmentation trees, structures and 
predicted fingerprints computed with SIRIUS.

### Installing Rsirius directly from Github
To install Rsirius directly from Github you need the package `remotes` and its method `install_github`. 
The following code will install Rsirius from this Github repository:

    require(remotes)
    install_github(repo = "boecker-lab/sirius-apis", subdir = "Rsirius", ref = "master", build = TRUE)

### Start SIRIUS' REST service using Rsirius
For using Rsirius you have to create an `SiriusApi` client object first. 
An object of this class `SiriusApi` handles the client-server communication and 
is necessary for starting the SIRIUS REST service as background service.
The REST service has to be started in order to use Rsirius.

    api_client <- SiriusApi$new(host = "http://localhost:", port = 8080)
    api_client$start(pathToSirius, inputData)
    
There is also a method to shut down the REST service:

    api_client$shutdown()
    
### Example

    comp_controller <- CompoundControllerApi$new(api_client)
    resp <- comp_controller$get_compound_ids_using_get(pid = "mySiriusProjectSpace")
    compound_ids <- resp$content
    
    mf_controller <- FormulaResultController$new(api_client)
    resp <- mf_controller$get_formula_ids_using_get(compoundId,projectSpaceId,includeFormulaScores = TRUE)
    formula_ids <- resp$content
  
  

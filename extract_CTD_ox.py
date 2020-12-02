def extract_CTD(CTDxarray, WinklerData, StationName):
    winklerdepths = WinklerData.sel(Station=StationName).Depth
    
    CTDvals = []

    for i in range(len(winklerdepths)):
        CTDval = CTDxarray.sel(depth=winklerdepths[i], method='nearest').oxygen.values 
        CTDvals.append(CTDval.item())
        
    return CTDvals
import gsw

def saturation_ox(cast_xarray):
    # calculate absolute salinity, conservative temperature, saturation oxygen conc.
    SA=gsw.SA_from_SP(cast_xarray.salinity.values, cast_xarray.pressure.values,
                      cast_xarray.longitude.values, cast_xarray.latitude.values)
    CT = gsw.CT_from_t(SA, cast_xarray.temperature.values, cast_xarray.pressure.values)
    O2sol = gsw.O2sol(SA, CT, cast_xarray.pressure.values, cast_xarray.longitude.values, 
                      cast_xarray.latitude.values)
    
    # this is the only way I could figure out to add as "data variable"
    cast_xarray=cast_xarray.reset_coords()
    cast_xarray=cast_xarray.set_coords(['station', 'latitude', 'longitude'])

    # add the calculated variables to the xarray
    cast_xarray['SA']=(['depth'], SA)
    cast_xarray['CT']=(['depth'], CT)
    cast_xarray['O2sol']=(['depth'], O2sol)

    cast_xarray.O2sol.attrs['units'] = 'umol/kg'
    
    return cast_xarray
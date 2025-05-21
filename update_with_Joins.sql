select * into tbl_mStore_SM from tbl_mStore

update  A set  A.isFranchise =  case  when  A.StoreTypeasperBrand = 'COCO' then 'No' else 'Yes' end ,

--A.FranchiseName =B.[Franchise Name]

A.SubBrandName =  
CASE 
    WHEN  A.[Brand Desc] = 'PLANET FASHION' THEN 'PF'
    WHEN   A.[Brand Desc] = 'LOUIS PHILIPPE' THEN 'LP'
    WHEN   A.[Brand Desc] = 'VAN HEUSEN' THEN 'VH'
    WHEN   A.[Brand Desc] = 'ALLEN SOLLY' THEN 'AS'
    WHEN   A.[Brand Desc] = 'LP ALL STAR' THEN 'LP ALL STAR'
    WHEN   A.[Brand Desc] = 'AMERICAN EAGLE' THEN 'AE'
    WHEN   A.[Brand Desc] = 'PE BLUE' THEN 'PE BLUE'
    WHEN   A.[Brand Desc] = 'AMERICAN EAGLE VALUE STORE' THEN 'AE VALUE'
    WHEN   A.[Brand Desc] = 'PE RED' THEN 'PE RED'
    WHEN   A.[Brand Desc] = 'SIMON CARTER' THEN 'SC'
    WHEN   A.[Brand Desc] = 'ALLEN SOLLY VALUE STORE' THEN 'AS VALUE'
    WHEN   A.[Brand Desc] = 'VAN HEUSEN VALUE STORE' THEN 'VH VALUE'
    WHEN   A.[Brand Desc] = 'LOUIS PHILIPPE VALUE STORE' THEN 'LP VALUE'
    WHEN   A.[Brand Desc] = 'PEM VALUE STORE' THEN 'PEM VALUE'
    WHEN   A.[Brand Desc] = 'AS PRIME' THEN 'AS PRIME'
    WHEN   A.[Brand Desc] = 'VH GOLD' THEN 'VH GOLD'
    WHEN   A.[Brand Desc] = 'REEBOK VALUE STORE' THEN 'RB VALUE'
    WHEN   A.[Brand Desc] = 'REEBOK' THEN 'RB VALUE'
    WHEN   A.[Brand Desc] = 'SIMON CARTER VALUE STORE' THEN 'SC VALUE'
    ELSE A.[Brand Desc]
	end




from  tbl_mStore A join  store_update B on A.[Store ID] = B.[ASP Code]

(deftemplate Parent 
   (slot status (allowed-values mother father)) 
   (slot kid) 
   (slot parent)
)

(deffacts parent-facts 
   (Parent (status father) (kid John) (parent Tom))
   (Parent (status mother) (kid John) (parent Susan))
)


(deftemplate Parents 
   (slot kid)
   (slot father) 
   (slot mother)
)

(deffacts parents-facts 
   (Parents (kid John) (father Tom) (mother Susan))
)


(deftemplate Status-family 
   (slot name)
   (slot status (allowed-values mother father son daughter)) 
)

(deffacts status-facts 
   (Status-family (name Tom) (status father))
   (Status-family (name Susan) (status mother))
   (Status-family (name John) (status son))
)

(deftemplate Gender 
   (slot name)
   (slot gender (allowed-values male female)) 
)

(deffacts gender-facts 
   (Gender (name Tom) (gender male))
   (Gender (name Susan) (gender female))
   (Gender (name John) (gender male))
)
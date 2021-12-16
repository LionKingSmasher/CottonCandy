module CottonCandy
    include "cottoncandy_consts.f90"
    contains
    include "Integral.f90"
    include "special_function.f90"
    include "cottoncandy_ode.f90"
    include "FourierTransform.f90"
end module CottonCandy

module CottonCandy_Matrix
    include "cottoncandy_matrix.f90"
end module CottonCandy_Matrix
# Adapted from scikit-learn
# Copyright (c) 2007–2016 The scikit-learn developers.

# Install scikit-learn if not installed
import PyCall
PyCall.pyimport_conda("sklearn", "scikit-learn")

include("../src/Skcore.jl")  # a bit awkward - FIXME

include("test_models.jl") # runs tests automatically

include("test_base.jl")
all_test_base()

include("test_pipeline.jl")
all_test_pipeline()

include("test_crossvalidation.jl")
all_test_crossvalidation()

include("test_utils.jl")
include("test_quickstart.jl")

nothing

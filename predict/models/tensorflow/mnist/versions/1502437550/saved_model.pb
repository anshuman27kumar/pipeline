цу
аЧ
9
Add
x"T
y"T
z"T"
Ttype:
2	
ђ
ApplyGradientDescent
var"Tђ

alpha"T

delta"T
out"Tђ"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
љ
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
Ї
ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:    
+
Log
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Ѕ
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	љ
і
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
Ѕ
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	љ
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
і
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Ѕ
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ"serve*1.2.12v1.2.0-5-g435cdfcЊ┴
p
PlaceholderPlaceholder*(
_output_shapes
:         љ*
dtype0*
shape:         љ
\
zerosConst*
_output_shapes
:	љ
*
dtype0*
valueB	љ
*    
~
Variable
VariableV2*
shape:	љ
*
shared_name *
dtype0*
	container *
_output_shapes
:	љ

џ
Variable/AssignAssignVariablezeros*
_output_shapes
:	љ
*
validate_shape(*
_class
loc:@Variable*
T0*
use_locking(
j
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
:	љ

T
zeros_1Const*
valueB
*    *
_output_shapes
:
*
dtype0
v

Variable_1
VariableV2*
shared_name *
dtype0*
shape:
*
	container *
_output_shapes
:

Ю
Variable_1/AssignAssign
Variable_1zeros_1*
_class
loc:@Variable_1*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
k
Variable_1/readIdentity
Variable_1*
_output_shapes
:
*
_class
loc:@Variable_1*
T0
ё
MatMulMatMulPlaceholderVariable/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         

U
addAddMatMulVariable_1/read*
T0*'
_output_shapes
:         

I
SoftmaxSoftmaxadd*'
_output_shapes
:         
*
T0
p
Placeholder_1Placeholder*
shape:         
*
dtype0*'
_output_shapes
:         

E
LogLogSoftmax*
T0*'
_output_shapes
:         

P
mulMulPlaceholder_1Log*'
_output_shapes
:         
*
T0
_
Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
q
SumSummulSum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
=
NegNegSum*
T0*#
_output_shapes
:         
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
V
MeanMeanNegConst*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
ї
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
\
gradients/Mean_grad/ShapeShapeNeg*
out_type0*
_output_shapes
:*
T0
ў
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
^
gradients/Mean_grad/Shape_1ShapeNeg*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ќ
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
џ
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
ѓ
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
ђ
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
ѕ
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:         
h
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv*
T0*#
_output_shapes
:         
[
gradients/Sum_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
Y
gradients/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
r
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*
_output_shapes
:
x
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*
_output_shapes
:
d
gradients/Sum_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
`
gradients/Sum_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
`
gradients/Sum_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
б
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
_
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
_output_shapes
:*
T0
═
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*#
_output_shapes
:         *
T0*
N
^
gradients/Sum_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
Њ
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:         
ѓ
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*
_output_shapes
:
љ
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
ю
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         

e
gradients/mul_grad/ShapeShapePlaceholder_1*
out_type0*
_output_shapes
:*
T0
]
gradients/mul_grad/Shape_1ShapeLog*
T0*
_output_shapes
:*
out_type0
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
m
gradients/mul_grad/mulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:         

Ъ
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ќ
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         

y
gradients/mul_grad/mul_1MulPlaceholder_1gradients/Sum_grad/Tile*
T0*'
_output_shapes
:         

Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Ю
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:         
*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
┌
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:         
*-
_class#
!loc:@gradients/mul_grad/Reshape
Я
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*'
_output_shapes
:         

ќ
gradients/Log_grad/Reciprocal
ReciprocalSoftmax.^gradients/mul_grad/tuple/control_dependency_1*'
_output_shapes
:         
*
T0
Ю
gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:         

t
gradients/Softmax_grad/mulMulgradients/Log_grad/mulSoftmax*'
_output_shapes
:         
*
T0
v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Х
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:         
u
$gradients/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       
Ф
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:         *
Tshape0
І
gradients/Softmax_grad/subSubgradients/Log_grad/mulgradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:         

z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*'
_output_shapes
:         
*
T0
^
gradients/add_grad/ShapeShapeMatMul*
_output_shapes
:*
out_type0*
T0
d
gradients/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Ц
gradients/add_grad/SumSumgradients/Softmax_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Ќ
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*'
_output_shapes
:         
*
Tshape0*
T0
Е
gradients/add_grad/Sum_1Sumgradients/Softmax_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
љ
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
┌
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*'
_output_shapes
:         
*-
_class#
!loc:@gradients/add_grad/Reshape*
T0
М
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
:
*/
_class%
#!loc:@gradients/add_grad/Reshape_1
╗
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:         љ
▓
gradients/MatMul_grad/MatMul_1MatMulPlaceholder+gradients/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
_output_shapes
:	љ
*
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
т
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*(
_output_shapes
:         љ*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0
Р
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	љ
*
T0
b
GradientDescent/learning_rateConst*
valueB
 *═╠╠<*
_output_shapes
: *
dtype0
Ђ
4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Variable*
_output_shapes
:	љ
*
T0*
use_locking( 
 
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes
:
*
_class
loc:@Variable_1
Є
GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
e
ArgMaxArgMaxSoftmaxArgMax/dimension*#
_output_shapes
:         *
T0*

Tidx0
T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
o
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*#
_output_shapes
:         *
T0*

Tidx0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:         *
T0	
P
CastCastEqual*

DstT0*#
_output_shapes
:         *

SrcT0

Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_1*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             
v
ReshapeReshapePlaceholderReshape/shape*/
_output_shapes
:         *
Tshape0*
T0
Q

inputs/tagConst*
dtype0*
_output_shapes
: *
valueB Binputs

inputsImageSummary
inputs/tagReshape*

max_images
*
T0*
	bad_colorB:    *
_output_shapes
: 
N
weights/RankConst*
dtype0*
_output_shapes
: *
value	B :
U
weights/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
U
weights/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
v
weights/rangeRangeweights/range/startweights/Rankweights/range/delta*
_output_shapes
:*

Tidx0
p
weights/MeanMeanVariable/readweights/range*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
weights/mean/tagsConst*
_output_shapes
: *
dtype0*
valueB Bweights/mean
_
weights/meanScalarSummaryweights/mean/tagsweights/Mean*
_output_shapes
: *
T0
Y
weights/subSubVariable/readweights/Mean*
T0*
_output_shapes
:	љ

O
weights/SquareSquareweights/sub*
_output_shapes
:	љ
*
T0
^
weights/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
s
weights/Mean_1Meanweights/Squareweights/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
E
weights/SqrtSqrtweights/Mean_1*
T0*
_output_shapes
: 
b
weights/stddev/tagsConst*
valueB Bweights/stddev*
dtype0*
_output_shapes
: 
c
weights/stddevScalarSummaryweights/stddev/tagsweights/Sqrt*
_output_shapes
: *
T0
P
weights/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
W
weights/range_1/startConst*
value	B : *
_output_shapes
: *
dtype0
W
weights/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
~
weights/range_1Rangeweights/range_1/startweights/Rank_1weights/range_1/delta*
_output_shapes
:*

Tidx0
p
weights/MaxMaxVariable/readweights/range_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
weights/max/tagsConst*
_output_shapes
: *
dtype0*
valueB Bweights/max
\
weights/maxScalarSummaryweights/max/tagsweights/Max*
T0*
_output_shapes
: 
P
weights/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
W
weights/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 
W
weights/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :
~
weights/range_2Rangeweights/range_2/startweights/Rank_2weights/range_2/delta*

Tidx0*
_output_shapes
:
p
weights/MinMinVariable/readweights/range_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
weights/min/tagsConst*
valueB Bweights/min*
_output_shapes
: *
dtype0
\
weights/minScalarSummaryweights/min/tagsweights/Min*
_output_shapes
: *
T0
c
weights/weights/tagConst*
_output_shapes
: *
dtype0* 
valueB Bweights/weights
h
weights/weightsHistogramSummaryweights/weights/tagVariable/read*
T0*
_output_shapes
: 
M
biases/RankConst*
value	B :*
_output_shapes
: *
dtype0
T
biases/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
T
biases/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
r
biases/rangeRangebiases/range/startbiases/Rankbiases/range/delta*

Tidx0*
_output_shapes
:
p
biases/MeanMeanVariable_1/readbiases/range*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
\
biases/mean/tagsConst*
dtype0*
_output_shapes
: *
valueB Bbiases/mean
\
biases/meanScalarSummarybiases/mean/tagsbiases/Mean*
_output_shapes
: *
T0
T

biases/subSubVariable_1/readbiases/Mean*
_output_shapes
:
*
T0
H
biases/SquareSquare
biases/sub*
_output_shapes
:
*
T0
V
biases/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
p
biases/Mean_1Meanbiases/Squarebiases/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
C
biases/SqrtSqrtbiases/Mean_1*
_output_shapes
: *
T0
`
biases/stddev/tagsConst*
valueB Bbiases/stddev*
_output_shapes
: *
dtype0
`
biases/stddevScalarSummarybiases/stddev/tagsbiases/Sqrt*
_output_shapes
: *
T0
O
biases/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :
V
biases/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
V
biases/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
z
biases/range_1Rangebiases/range_1/startbiases/Rank_1biases/range_1/delta*

Tidx0*
_output_shapes
:
p

biases/MaxMaxVariable_1/readbiases/range_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Z
biases/max/tagsConst*
valueB B
biases/max*
_output_shapes
: *
dtype0
Y

biases/maxScalarSummarybiases/max/tags
biases/Max*
T0*
_output_shapes
: 
O
biases/Rank_2Const*
value	B :*
_output_shapes
: *
dtype0
V
biases/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 
V
biases/range_2/deltaConst*
dtype0*
_output_shapes
: *
value	B :
z
biases/range_2Rangebiases/range_2/startbiases/Rank_2biases/range_2/delta*

Tidx0*
_output_shapes
:
p

biases/MinMinVariable_1/readbiases/range_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Z
biases/min/tagsConst*
valueB B
biases/min*
dtype0*
_output_shapes
: 
Y

biases/minScalarSummarybiases/min/tags
biases/Min*
_output_shapes
: *
T0
_
biases/biases/tagConst*
valueB Bbiases/biases*
dtype0*
_output_shapes
: 
f
biases/biasesHistogramSummarybiases/biases/tagVariable_1/read*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
_output_shapes
: *
dtype0
G
lossScalarSummary	loss/tagsMean*
_output_shapes
: *
T0
V
accuracy/tagsConst*
_output_shapes
: *
dtype0*
valueB Baccuracy
Q
accuracyScalarSummaryaccuracy/tagsMean_1*
_output_shapes
: *
T0
у
Merge/MergeSummaryMergeSummaryinputsweights/meanweights/stddevweights/maxweights/minweights/weightsbiases/meanbiases/stddev
biases/max
biases/minbiases/biaseslossaccuracy*
N*
_output_shapes
: 
2
initNoOp^Variable/Assign^Variable_1/Assign
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
u
save/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:
Ђ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
l
save/RestoreV2/tensor_namesConst*
valueBBVariable*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
љ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ъ
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	љ
*
_class
loc:@Variable
p
save/RestoreV2_1/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
ќ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_1Assign
Variable_1save/RestoreV2_1*
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
6
save/restore_allNoOp^save/Assign^save/Assign_1
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
є
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_4eb80c2f111f4b98bfbf1313b0520391/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
Ё
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
w
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*)
value BBVariableB
Variable_1
i
save_1/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:
Њ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2
Ў
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
Б
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
_output_shapes
:*
T0*
N
Ѓ
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
ѓ
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
n
save_1/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBVariable
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
ў
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
Б
save_1/AssignAssignVariablesave_1/RestoreV2*
_class
loc:@Variable*
_output_shapes
:	љ
*
T0*
validate_shape(*
use_locking(
r
save_1/RestoreV2_1/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
ъ
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
д
save_1/Assign_1Assign
Variable_1save_1/RestoreV2_1*
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
>
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
accuracy

Mean_1:0"
x
Placeholder:0"*
outputs
{"prediction": "Softmax:0"}"u
	variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"
trainable_variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"¤
	summaries┴
Й
inputs:0
weights/mean:0
weights/stddev:0
weights/max:0
weights/min:0
weights/weights:0
biases/mean:0
biases/stddev:0
biases/max:0
biases/min:0
biases/biases:0
loss:0

accuracy:0"(
inputs
{"image": "Placeholder:0"}"
y_
Placeholder_1:0"
train_op

GradientDescent*Ї
serving_defaultz
/
inputs%
Placeholder:0         љ+
outputs 
	Softmax:0         
tensorflow/serving/predict*Ё
predictz
/
inputs%
Placeholder:0         љ+
outputs 
	Softmax:0         
tensorflow/serving/predict
˙
ůÝ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02unknown8ÎĂ

conv2d_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_123/kernel

%conv2d_123/kernel/Read/ReadVariableOpReadVariableOpconv2d_123/kernel*&
_output_shapes
:*
dtype0
v
conv2d_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_123/bias
o
#conv2d_123/bias/Read/ReadVariableOpReadVariableOpconv2d_123/bias*
_output_shapes
:*
dtype0

conv2d_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_124/kernel

%conv2d_124/kernel/Read/ReadVariableOpReadVariableOpconv2d_124/kernel*&
_output_shapes
: *
dtype0
v
conv2d_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_124/bias
o
#conv2d_124/bias/Read/ReadVariableOpReadVariableOpconv2d_124/bias*
_output_shapes
: *
dtype0

conv2d_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_125/kernel

%conv2d_125/kernel/Read/ReadVariableOpReadVariableOpconv2d_125/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_125/bias
o
#conv2d_125/bias/Read/ReadVariableOpReadVariableOpconv2d_125/bias*
_output_shapes
:@*
dtype0
|
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_41/kernel
u
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel* 
_output_shapes
:
*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_123/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_123/kernel/m

,Adam/conv2d_123/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_123/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_123/bias/m
}
*Adam/conv2d_123/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_124/kernel/m

,Adam/conv2d_124/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_124/bias/m
}
*Adam/conv2d_124/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_125/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_125/kernel/m

,Adam/conv2d_125/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_125/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_125/bias/m
}
*Adam/conv2d_125/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_41/kernel/m

*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_123/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_123/kernel/v

,Adam/conv2d_123/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_123/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_123/bias/v
}
*Adam/conv2d_123/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_124/kernel/v

,Adam/conv2d_124/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_124/bias/v
}
*Adam/conv2d_124/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_125/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_125/kernel/v

,Adam/conv2d_125/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_125/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_125/bias/v
}
*Adam/conv2d_125/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_41/kernel/v

*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ŮJ
valueĎJBĚJ BĹJ
Š
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Ś

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
Ś

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*

)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
Ś

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses*

7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
Ľ
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses* 

D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
Ś

Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses*
ä
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratemm!m"m/m0mJmKmvv!v"v /vĄ0v˘JvŁKv¤*
<
0
1
!2
"3
/4
05
J6
K7*
<
0
1
!2
"3
/4
05
J6
K7*
* 
°
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

\serving_default* 
a[
VARIABLE_VALUEconv2d_123/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_123/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_124/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_124/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 

gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
* 
* 
* 

lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_125/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_125/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

/0
01*

/0
01*
* 

qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_41/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

J0
K1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
~
VARIABLE_VALUEAdam/conv2d_123/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_123/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_124/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_124/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_125/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_125/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_123/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_123/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_124/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_124/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_125/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_125/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_conv2d_123_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙
Ű
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_123_inputconv2d_123/kernelconv2d_123/biasconv2d_124/kernelconv2d_124/biasconv2d_125/kernelconv2d_125/biasdense_41/kerneldense_41/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1145490
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Í
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_123/kernel/Read/ReadVariableOp#conv2d_123/bias/Read/ReadVariableOp%conv2d_124/kernel/Read/ReadVariableOp#conv2d_124/bias/Read/ReadVariableOp%conv2d_125/kernel/Read/ReadVariableOp#conv2d_125/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_123/kernel/m/Read/ReadVariableOp*Adam/conv2d_123/bias/m/Read/ReadVariableOp,Adam/conv2d_124/kernel/m/Read/ReadVariableOp*Adam/conv2d_124/bias/m/Read/ReadVariableOp,Adam/conv2d_125/kernel/m/Read/ReadVariableOp*Adam/conv2d_125/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp,Adam/conv2d_123/kernel/v/Read/ReadVariableOp*Adam/conv2d_123/bias/v/Read/ReadVariableOp,Adam/conv2d_124/kernel/v/Read/ReadVariableOp*Adam/conv2d_124/bias/v/Read/ReadVariableOp,Adam/conv2d_125/kernel/v/Read/ReadVariableOp*Adam/conv2d_125/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_1145760
´
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_123/kernelconv2d_123/biasconv2d_124/kernelconv2d_124/biasconv2d_125/kernelconv2d_125/biasdense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_123/kernel/mAdam/conv2d_123/bias/mAdam/conv2d_124/kernel/mAdam/conv2d_124/bias/mAdam/conv2d_125/kernel/mAdam/conv2d_125/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/conv2d_123/kernel/vAdam/conv2d_123/bias/vAdam/conv2d_124/kernel/vAdam/conv2d_124/bias/vAdam/conv2d_125/kernel/vAdam/conv2d_125/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1145869Ě
(
Ö
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145238

inputs,
conv2d_123_1145212: 
conv2d_123_1145214:,
conv2d_124_1145218:  
conv2d_124_1145220: ,
conv2d_125_1145224: @ 
conv2d_125_1145226:@$
dense_41_1145232:

dense_41_1145234:
identity˘"conv2d_123/StatefulPartitionedCall˘"conv2d_124/StatefulPartitionedCall˘"conv2d_125/StatefulPartitionedCall˘ dense_41/StatefulPartitionedCall˘"dropout_41/StatefulPartitionedCall
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_123_1145212conv2d_123_1145214*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145022ű
!max_pooling2d_123/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1144977Ş
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_1145218conv2d_124_1145220*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145040ű
!max_pooling2d_124/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1144989Ş
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_1145224conv2d_125_1145226*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145058ű
!max_pooling2d_125/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145001ü
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145153ç
flatten_41/PartitionedCallPartitionedCall+dropout_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145078
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_1145232dense_41_1145234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1145091x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ý
NoOpNoOp#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ű
Ą
,__inference_conv2d_123_layer_call_fn_1145499

inputs!
unknown:
	unknown_0:
identity˘StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145022y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145058

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
 
_user_specified_nameinputs
Ł(
ŕ
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145336
conv2d_123_input,
conv2d_123_1145310: 
conv2d_123_1145312:,
conv2d_124_1145316:  
conv2d_124_1145318: ,
conv2d_125_1145322: @ 
conv2d_125_1145324:@$
dense_41_1145330:

dense_41_1145332:
identity˘"conv2d_123/StatefulPartitionedCall˘"conv2d_124/StatefulPartitionedCall˘"conv2d_125/StatefulPartitionedCall˘ dense_41/StatefulPartitionedCall˘"dropout_41/StatefulPartitionedCall
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputconv2d_123_1145310conv2d_123_1145312*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145022ű
!max_pooling2d_123/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1144977Ş
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_1145316conv2d_124_1145318*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145040ű
!max_pooling2d_124/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1144989Ş
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_1145322conv2d_125_1145324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145058ű
!max_pooling2d_125/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145001ü
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145153ç
flatten_41/PartitionedCallPartitionedCall+dropout_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145078
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_1145330dense_41_1145332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1145091x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ý
NoOpNoOp#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_123_input
Á
O
3__inference_max_pooling2d_125_layer_call_fn_1145575

inputs
identityß
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145001
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ë
c
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145618

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Í

*__inference_dense_41_layer_call_fn_1145627

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1145091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ç	
Ř
%__inference_signature_wrapper_1145490
conv2d_123_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:

	unknown_6:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1144968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_123_input
Ć
H
,__inference_dropout_41_layer_call_fn_1145585

inputs
identity˝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145070h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1144989

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ľ

f
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145607

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ă6
ó
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145467

inputsC
)conv2d_123_conv2d_readvariableop_resource:8
*conv2d_123_biasadd_readvariableop_resource:C
)conv2d_124_conv2d_readvariableop_resource: 8
*conv2d_124_biasadd_readvariableop_resource: C
)conv2d_125_conv2d_readvariableop_resource: @8
*conv2d_125_biasadd_readvariableop_resource:@;
'dense_41_matmul_readvariableop_resource:
6
(dense_41_biasadd_readvariableop_resource:
identity˘!conv2d_123/BiasAdd/ReadVariableOp˘ conv2d_123/Conv2D/ReadVariableOp˘!conv2d_124/BiasAdd/ReadVariableOp˘ conv2d_124/Conv2D/ReadVariableOp˘!conv2d_125/BiasAdd/ReadVariableOp˘ conv2d_125/Conv2D/ReadVariableOp˘dense_41/BiasAdd/ReadVariableOp˘dense_41/MatMul/ReadVariableOp
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ą
conv2d_123/Conv2DConv2Dinputs(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙p
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙°
max_pooling2d_123/MaxPoolMaxPoolconv2d_123/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
ksize
*
paddingVALID*
strides

 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ë
conv2d_124/Conv2DConv2D"max_pooling2d_123/MaxPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides

!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ n
conv2d_124/ReluReluconv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ °
max_pooling2d_124/MaxPoolMaxPoolconv2d_124/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
ksize
*
paddingVALID*
strides

 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ë
conv2d_125/Conv2DConv2D"max_pooling2d_124/MaxPool:output:0(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides

!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @n
conv2d_125/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @°
max_pooling2d_125/MaxPoolMaxPoolconv2d_125/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides
]
dropout_41/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_41/dropout/MulMul"max_pooling2d_125/MaxPool:output:0!dropout_41/dropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@j
dropout_41/dropout/ShapeShape"max_pooling2d_125/MaxPool:output:0*
T0*
_output_shapes
:Ş
/dropout_41/dropout/random_uniform/RandomUniformRandomUniform!dropout_41/dropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0f
!dropout_41/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ď
dropout_41/dropout/GreaterEqualGreaterEqual8dropout_41/dropout/random_uniform/RandomUniform:output:0*dropout_41/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dropout_41/dropout/CastCast#dropout_41/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dropout_41/dropout/Mul_1Muldropout_41/dropout/Mul:z:0dropout_41/dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
flatten_41/ReshapeReshapedropout_41/dropout/Mul_1:z:0flatten_41/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_41/MatMulMatMulflatten_41/Reshape:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 
˝
#__inference__traced_restore_1145869
file_prefix<
"assignvariableop_conv2d_123_kernel:0
"assignvariableop_1_conv2d_123_bias:>
$assignvariableop_2_conv2d_124_kernel: 0
"assignvariableop_3_conv2d_124_bias: >
$assignvariableop_4_conv2d_125_kernel: @0
"assignvariableop_5_conv2d_125_bias:@6
"assignvariableop_6_dense_41_kernel:
.
 assignvariableop_7_dense_41_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: F
,assignvariableop_17_adam_conv2d_123_kernel_m:8
*assignvariableop_18_adam_conv2d_123_bias_m:F
,assignvariableop_19_adam_conv2d_124_kernel_m: 8
*assignvariableop_20_adam_conv2d_124_bias_m: F
,assignvariableop_21_adam_conv2d_125_kernel_m: @8
*assignvariableop_22_adam_conv2d_125_bias_m:@>
*assignvariableop_23_adam_dense_41_kernel_m:
6
(assignvariableop_24_adam_dense_41_bias_m:F
,assignvariableop_25_adam_conv2d_123_kernel_v:8
*assignvariableop_26_adam_conv2d_123_bias_v:F
,assignvariableop_27_adam_conv2d_124_kernel_v: 8
*assignvariableop_28_adam_conv2d_124_bias_v: F
,assignvariableop_29_adam_conv2d_125_kernel_v: @8
*assignvariableop_30_adam_conv2d_125_bias_v:@>
*assignvariableop_31_adam_dense_41_kernel_v:
6
(assignvariableop_32_adam_dense_41_bias_v:
identity_34˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9˛
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ř
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_123_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_123_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_124_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_124_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_125_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_125_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_41_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_41_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_conv2d_123_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv2d_123_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_124_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_124_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_125_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_125_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_41_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_41_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_123_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_123_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_124_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_124_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_125_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_125_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_41_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_41_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ľ
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145022

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145040

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Á
O
3__inference_max_pooling2d_123_layer_call_fn_1145515

inputs
identityß
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1144977
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145570

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
 
_user_specified_nameinputs
ú
e
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145070

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ű	
Ř
/__inference_sequential_41_layer_call_fn_1145363

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:

	unknown_6:
identity˘StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1145550

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ů&
ą
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145098

inputs,
conv2d_123_1145023: 
conv2d_123_1145025:,
conv2d_124_1145041:  
conv2d_124_1145043: ,
conv2d_125_1145059: @ 
conv2d_125_1145061:@$
dense_41_1145092:

dense_41_1145094:
identity˘"conv2d_123/StatefulPartitionedCall˘"conv2d_124/StatefulPartitionedCall˘"conv2d_125/StatefulPartitionedCall˘ dense_41/StatefulPartitionedCall
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_123_1145023conv2d_123_1145025*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145022ű
!max_pooling2d_123/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1144977Ş
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_1145041conv2d_124_1145043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145040ű
!max_pooling2d_124/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1144989Ş
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_1145059conv2d_125_1145061*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145058ű
!max_pooling2d_125/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145001ě
dropout_41/PartitionedCallPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145070ß
flatten_41/PartitionedCallPartitionedCall#dropout_41/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145078
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_1145092dense_41_1145094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1145091x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
NoOpNoOp#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Š

ř
E__inference_dense_41_layer_call_and_return_conditional_losses_1145638

inputs2
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ý9
ľ
"__inference__wrapped_model_1144968
conv2d_123_inputQ
7sequential_41_conv2d_123_conv2d_readvariableop_resource:F
8sequential_41_conv2d_123_biasadd_readvariableop_resource:Q
7sequential_41_conv2d_124_conv2d_readvariableop_resource: F
8sequential_41_conv2d_124_biasadd_readvariableop_resource: Q
7sequential_41_conv2d_125_conv2d_readvariableop_resource: @F
8sequential_41_conv2d_125_biasadd_readvariableop_resource:@I
5sequential_41_dense_41_matmul_readvariableop_resource:
D
6sequential_41_dense_41_biasadd_readvariableop_resource:
identity˘/sequential_41/conv2d_123/BiasAdd/ReadVariableOp˘.sequential_41/conv2d_123/Conv2D/ReadVariableOp˘/sequential_41/conv2d_124/BiasAdd/ReadVariableOp˘.sequential_41/conv2d_124/Conv2D/ReadVariableOp˘/sequential_41/conv2d_125/BiasAdd/ReadVariableOp˘.sequential_41/conv2d_125/Conv2D/ReadVariableOp˘-sequential_41/dense_41/BiasAdd/ReadVariableOp˘,sequential_41/dense_41/MatMul/ReadVariableOpŽ
.sequential_41/conv2d_123/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0×
sequential_41/conv2d_123/Conv2DConv2Dconv2d_123_input6sequential_41/conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
¤
/sequential_41/conv2d_123/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ę
 sequential_41/conv2d_123/BiasAddBiasAdd(sequential_41/conv2d_123/Conv2D:output:07sequential_41/conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_41/conv2d_123/ReluRelu)sequential_41/conv2d_123/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Ě
'sequential_41/max_pooling2d_123/MaxPoolMaxPool+sequential_41/conv2d_123/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
ksize
*
paddingVALID*
strides
Ž
.sequential_41/conv2d_124/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ő
sequential_41/conv2d_124/Conv2DConv2D0sequential_41/max_pooling2d_123/MaxPool:output:06sequential_41/conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides
¤
/sequential_41/conv2d_124/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_124_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Č
 sequential_41/conv2d_124/BiasAddBiasAdd(sequential_41/conv2d_124/Conv2D:output:07sequential_41/conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
sequential_41/conv2d_124/ReluRelu)sequential_41/conv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ Ě
'sequential_41/max_pooling2d_124/MaxPoolMaxPool+sequential_41/conv2d_124/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
ksize
*
paddingVALID*
strides
Ž
.sequential_41/conv2d_125/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ő
sequential_41/conv2d_125/Conv2DConv2D0sequential_41/max_pooling2d_124/MaxPool:output:06sequential_41/conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides
¤
/sequential_41/conv2d_125/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_125_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Č
 sequential_41/conv2d_125/BiasAddBiasAdd(sequential_41/conv2d_125/Conv2D:output:07sequential_41/conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
sequential_41/conv2d_125/ReluRelu)sequential_41/conv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @Ě
'sequential_41/max_pooling2d_125/MaxPoolMaxPool+sequential_41/conv2d_125/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides

!sequential_41/dropout_41/IdentityIdentity0sequential_41/max_pooling2d_125/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@o
sequential_41/flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  ´
 sequential_41/flatten_41/ReshapeReshape*sequential_41/dropout_41/Identity:output:0'sequential_41/flatten_41/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
,sequential_41/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_41_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0ş
sequential_41/dense_41/MatMulMatMul)sequential_41/flatten_41/Reshape:output:04sequential_41/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_41/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ť
sequential_41/dense_41/BiasAddBiasAdd'sequential_41/dense_41/MatMul:product:05sequential_41/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_41/dense_41/SoftmaxSoftmax'sequential_41/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
IdentityIdentity(sequential_41/dense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
NoOpNoOp0^sequential_41/conv2d_123/BiasAdd/ReadVariableOp/^sequential_41/conv2d_123/Conv2D/ReadVariableOp0^sequential_41/conv2d_124/BiasAdd/ReadVariableOp/^sequential_41/conv2d_124/Conv2D/ReadVariableOp0^sequential_41/conv2d_125/BiasAdd/ReadVariableOp/^sequential_41/conv2d_125/Conv2D/ReadVariableOp.^sequential_41/dense_41/BiasAdd/ReadVariableOp-^sequential_41/dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2b
/sequential_41/conv2d_123/BiasAdd/ReadVariableOp/sequential_41/conv2d_123/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_123/Conv2D/ReadVariableOp.sequential_41/conv2d_123/Conv2D/ReadVariableOp2b
/sequential_41/conv2d_124/BiasAdd/ReadVariableOp/sequential_41/conv2d_124/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_124/Conv2D/ReadVariableOp.sequential_41/conv2d_124/Conv2D/ReadVariableOp2b
/sequential_41/conv2d_125/BiasAdd/ReadVariableOp/sequential_41/conv2d_125/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_125/Conv2D/ReadVariableOp.sequential_41/conv2d_125/Conv2D/ReadVariableOp2^
-sequential_41/dense_41/BiasAdd/ReadVariableOp-sequential_41/dense_41/BiasAdd/ReadVariableOp2\
,sequential_41/dense_41/MatMul/ReadVariableOp,sequential_41/dense_41/MatMul/ReadVariableOp:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_123_input
Š

ř
E__inference_dense_41_layer_call_and_return_conditional_losses_1145091

inputs2
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ű	
Ř
/__inference_sequential_41_layer_call_fn_1145384

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:

	unknown_6:
identity˘StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


â
/__inference_sequential_41_layer_call_fn_1145117
conv2d_123_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:

	unknown_6:
identity˘StatefulPartitionedCallş
StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_123_input


â
/__inference_sequential_41_layer_call_fn_1145278
conv2d_123_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:

	unknown_6:
identity˘StatefulPartitionedCallş
StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_123_input
ľ

f
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145153

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ž
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs


G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145510

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1145520

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
÷&
ť
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145307
conv2d_123_input,
conv2d_123_1145281: 
conv2d_123_1145283:,
conv2d_124_1145287:  
conv2d_124_1145289: ,
conv2d_125_1145293: @ 
conv2d_125_1145295:@$
dense_41_1145301:

dense_41_1145303:
identity˘"conv2d_123/StatefulPartitionedCall˘"conv2d_124/StatefulPartitionedCall˘"conv2d_125/StatefulPartitionedCall˘ dense_41/StatefulPartitionedCall
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputconv2d_123_1145281conv2d_123_1145283*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145022ű
!max_pooling2d_123/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1144977Ş
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_1145287conv2d_124_1145289*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145040ű
!max_pooling2d_124/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1144989Ş
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_1145293conv2d_125_1145295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145058ű
!max_pooling2d_125/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145001ě
dropout_41/PartitionedCallPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145070ß
flatten_41/PartitionedCallPartitionedCall#dropout_41/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145078
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_1145301dense_41_1145303*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_1145091x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
NoOpNoOp#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_123_input

e
,__inference_dropout_41_layer_call_fn_1145590

inputs
identity˘StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145153w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs


G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145540

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ú
e
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145595

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145001

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş
H
,__inference_flatten_41_layer_call_fn_1145612

inputs
identityˇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145078b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
çG
ĺ
 __inference__traced_save_1145760
file_prefix0
,savev2_conv2d_123_kernel_read_readvariableop.
*savev2_conv2d_123_bias_read_readvariableop0
,savev2_conv2d_124_kernel_read_readvariableop.
*savev2_conv2d_124_bias_read_readvariableop0
,savev2_conv2d_125_kernel_read_readvariableop.
*savev2_conv2d_125_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_123_kernel_m_read_readvariableop5
1savev2_adam_conv2d_123_bias_m_read_readvariableop7
3savev2_adam_conv2d_124_kernel_m_read_readvariableop5
1savev2_adam_conv2d_124_bias_m_read_readvariableop7
3savev2_adam_conv2d_125_kernel_m_read_readvariableop5
1savev2_adam_conv2d_125_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop7
3savev2_adam_conv2d_123_kernel_v_read_readvariableop5
1savev2_adam_conv2d_123_bias_v_read_readvariableop7
3savev2_adam_conv2d_124_kernel_v_read_readvariableop5
1savev2_adam_conv2d_124_bias_v_read_readvariableop7
3savev2_adam_conv2d_125_kernel_v_read_readvariableop5
1savev2_adam_conv2d_125_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ż
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ř
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHą
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ĺ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_123_kernel_read_readvariableop*savev2_conv2d_123_bias_read_readvariableop,savev2_conv2d_124_kernel_read_readvariableop*savev2_conv2d_124_bias_read_readvariableop,savev2_conv2d_125_kernel_read_readvariableop*savev2_conv2d_125_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_123_kernel_m_read_readvariableop1savev2_adam_conv2d_123_bias_m_read_readvariableop3savev2_adam_conv2d_124_kernel_m_read_readvariableop1savev2_adam_conv2d_124_bias_m_read_readvariableop3savev2_adam_conv2d_125_kernel_m_read_readvariableop1savev2_adam_conv2d_125_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop3savev2_adam_conv2d_123_kernel_v_read_readvariableop1savev2_adam_conv2d_123_bias_v_read_readvariableop3savev2_adam_conv2d_124_kernel_v_read_readvariableop1savev2_adam_conv2d_124_bias_v_read_readvariableop3savev2_adam_conv2d_125_kernel_v_read_readvariableop1savev2_adam_conv2d_125_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*š
_input_shapes§
¤: ::: : : @:@:
:: : : : : : : : : ::: : : @:@:
:::: : : @:@:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:& "
 
_output_shapes
:
: !

_output_shapes
::"

_output_shapes
: 
ę.
ó
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145422

inputsC
)conv2d_123_conv2d_readvariableop_resource:8
*conv2d_123_biasadd_readvariableop_resource:C
)conv2d_124_conv2d_readvariableop_resource: 8
*conv2d_124_biasadd_readvariableop_resource: C
)conv2d_125_conv2d_readvariableop_resource: @8
*conv2d_125_biasadd_readvariableop_resource:@;
'dense_41_matmul_readvariableop_resource:
6
(dense_41_biasadd_readvariableop_resource:
identity˘!conv2d_123/BiasAdd/ReadVariableOp˘ conv2d_123/Conv2D/ReadVariableOp˘!conv2d_124/BiasAdd/ReadVariableOp˘ conv2d_124/Conv2D/ReadVariableOp˘!conv2d_125/BiasAdd/ReadVariableOp˘ conv2d_125/Conv2D/ReadVariableOp˘dense_41/BiasAdd/ReadVariableOp˘dense_41/MatMul/ReadVariableOp
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ą
conv2d_123/Conv2DConv2Dinputs(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙p
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙°
max_pooling2d_123/MaxPoolMaxPoolconv2d_123/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
ksize
*
paddingVALID*
strides

 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ë
conv2d_124/Conv2DConv2D"max_pooling2d_123/MaxPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides

!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ n
conv2d_124/ReluReluconv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ °
max_pooling2d_124/MaxPoolMaxPoolconv2d_124/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
ksize
*
paddingVALID*
strides

 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ë
conv2d_125/Conv2DConv2D"max_pooling2d_124/MaxPool:output:0(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides

!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @n
conv2d_125/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @°
max_pooling2d_125/MaxPoolMaxPoolconv2d_125/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides
}
dropout_41/IdentityIdentity"max_pooling2d_125/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
flatten_41/ReshapeReshapedropout_41/Identity:output:0flatten_41/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_41/MatMulMatMulflatten_41/Reshape:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Á
O
3__inference_max_pooling2d_124_layer_call_fn_1145545

inputs
identityß
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1144989
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ó
Ą
,__inference_conv2d_125_layer_call_fn_1145559

inputs!
unknown: @
	unknown_0:@
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145058w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145580

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ë
c
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145078

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙@:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1144977

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ó
Ą
,__inference_conv2d_124_layer_call_fn_1145529

inputs!
unknown: 
	unknown_0: 
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145040w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs"ŰL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ç
serving_defaultł
W
conv2d_123_inputC
"serving_default_conv2d_123_input:0˙˙˙˙˙˙˙˙˙<
dense_410
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ŇĽ
Ă
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ť

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
ť

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
ť

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
ź
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
ť

Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
ó
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratemm!m"m/m0mJmKmvv!v"v /vĄ0v˘JvŁKv¤"
	optimizer
X
0
1
!2
"3
/4
05
J6
K7"
trackable_list_wrapper
X
0
1
!2
"3
/4
05
J6
K7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
/__inference_sequential_41_layer_call_fn_1145117
/__inference_sequential_41_layer_call_fn_1145363
/__inference_sequential_41_layer_call_fn_1145384
/__inference_sequential_41_layer_call_fn_1145278Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ö2ó
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145422
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145467
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145307
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145336Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ÖBÓ
"__inference__wrapped_model_1144968conv2d_123_input"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
,
\serving_default"
signature_map
+:)2conv2d_123/kernel
:2conv2d_123/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_conv2d_123_layer_call_fn_1145499˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ń2î
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145510˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ý2Ú
3__inference_max_pooling2d_123_layer_call_fn_1145515˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ř2ő
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1145520˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
+:) 2conv2d_124/kernel
: 2conv2d_124/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_conv2d_124_layer_call_fn_1145529˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ń2î
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145540˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ý2Ú
3__inference_max_pooling2d_124_layer_call_fn_1145545˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ř2ő
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1145550˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
+:) @2conv2d_125/kernel
:@2conv2d_125/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_conv2d_125_layer_call_fn_1145559˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ń2î
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145570˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
Ý2Ú
3__inference_max_pooling2d_125_layer_call_fn_1145575˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ř2ő
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145580˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_41_layer_call_fn_1145585
,__inference_dropout_41_layer_call_fn_1145590´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ě2É
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145595
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145607´
Ť˛§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_41_layer_call_fn_1145612˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ń2î
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145618˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
#:!
2dense_41/kernel
:2dense_41/bias
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
Ô2Ń
*__inference_dense_41_layer_call_fn_1145627˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ď2ě
E__inference_dense_41_layer_call_and_return_conditional_losses_1145638˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŐBŇ
%__inference_signature_wrapper_1145490conv2d_123_input"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
0:.2Adam/conv2d_123/kernel/m
": 2Adam/conv2d_123/bias/m
0:. 2Adam/conv2d_124/kernel/m
":  2Adam/conv2d_124/bias/m
0:. @2Adam/conv2d_125/kernel/m
": @2Adam/conv2d_125/bias/m
(:&
2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
0:.2Adam/conv2d_123/kernel/v
": 2Adam/conv2d_123/bias/v
0:. 2Adam/conv2d_124/kernel/v
":  2Adam/conv2d_124/bias/v
0:. @2Adam/conv2d_125/kernel/v
": @2Adam/conv2d_125/bias/v
(:&
2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/vŤ
"__inference__wrapped_model_1144968!"/0JKC˘@
9˘6
41
conv2d_123_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_41"
dense_41˙˙˙˙˙˙˙˙˙ť
G__inference_conv2d_123_layer_call_and_return_conditional_losses_1145510p9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
,__inference_conv2d_123_layer_call_fn_1145499c9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ""˙˙˙˙˙˙˙˙˙ˇ
G__inference_conv2d_124_layer_call_and_return_conditional_losses_1145540l!"7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@@
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@@ 
 
,__inference_conv2d_124_layer_call_fn_1145529_!"7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@@
Ş " ˙˙˙˙˙˙˙˙˙@@ ˇ
G__inference_conv2d_125_layer_call_and_return_conditional_losses_1145570l/07˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙   
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙  @
 
,__inference_conv2d_125_layer_call_fn_1145559_/07˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙   
Ş " ˙˙˙˙˙˙˙˙˙  @§
E__inference_dense_41_layer_call_and_return_conditional_losses_1145638^JK1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
*__inference_dense_41_layer_call_fn_1145627QJK1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙ˇ
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145595l;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@
 ˇ
G__inference_dropout_41_layer_call_and_return_conditional_losses_1145607l;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@
 
,__inference_dropout_41_layer_call_fn_1145585_;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş " ˙˙˙˙˙˙˙˙˙@
,__inference_dropout_41_layer_call_fn_1145590_;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p
Ş " ˙˙˙˙˙˙˙˙˙@­
G__inference_flatten_41_layer_call_and_return_conditional_losses_1145618b7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ş "'˘$

0˙˙˙˙˙˙˙˙˙
 
,__inference_flatten_41_layer_call_fn_1145612U7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ş "˙˙˙˙˙˙˙˙˙ń
N__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_1145520R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 É
3__inference_max_pooling2d_123_layer_call_fn_1145515R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ń
N__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_1145550R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 É
3__inference_max_pooling2d_124_layer_call_fn_1145545R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ń
N__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_1145580R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 É
3__inference_max_pooling2d_125_layer_call_fn_1145575R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ě
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145307~!"/0JKK˘H
A˘>
41
conv2d_123_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ě
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145336~!"/0JKK˘H
A˘>
41
conv2d_123_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Â
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145422t!"/0JKA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Â
J__inference_sequential_41_layer_call_and_return_conditional_losses_1145467t!"/0JKA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ¤
/__inference_sequential_41_layer_call_fn_1145117q!"/0JKK˘H
A˘>
41
conv2d_123_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙¤
/__inference_sequential_41_layer_call_fn_1145278q!"/0JKK˘H
A˘>
41
conv2d_123_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_41_layer_call_fn_1145363g!"/0JKA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_41_layer_call_fn_1145384g!"/0JKA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙Â
%__inference_signature_wrapper_1145490!"/0JKW˘T
˘ 
MŞJ
H
conv2d_123_input41
conv2d_123_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_41"
dense_41˙˙˙˙˙˙˙˙˙
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
conv2d_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_120/kernel

%conv2d_120/kernel/Read/ReadVariableOpReadVariableOpconv2d_120/kernel*&
_output_shapes
:*
dtype0
v
conv2d_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_120/bias
o
#conv2d_120/bias/Read/ReadVariableOpReadVariableOpconv2d_120/bias*
_output_shapes
:*
dtype0

conv2d_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_121/kernel

%conv2d_121/kernel/Read/ReadVariableOpReadVariableOpconv2d_121/kernel*&
_output_shapes
: *
dtype0
v
conv2d_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_121/bias
o
#conv2d_121/bias/Read/ReadVariableOpReadVariableOpconv2d_121/bias*
_output_shapes
: *
dtype0

conv2d_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_122/kernel

%conv2d_122/kernel/Read/ReadVariableOpReadVariableOpconv2d_122/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_122/bias
o
#conv2d_122/bias/Read/ReadVariableOpReadVariableOpconv2d_122/bias*
_output_shapes
:@*
dtype0
|
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_40/kernel
u
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel* 
_output_shapes
:
*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
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
Adam/conv2d_120/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_120/kernel/m

,Adam/conv2d_120/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_120/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_120/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_120/bias/m
}
*Adam/conv2d_120/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_120/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_121/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_121/kernel/m

,Adam/conv2d_121/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_121/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_121/bias/m
}
*Adam/conv2d_121/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_122/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_122/kernel/m

,Adam/conv2d_122/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_122/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_122/bias/m
}
*Adam/conv2d_122/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_40/kernel/m

*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_120/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_120/kernel/v

,Adam/conv2d_120/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_120/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_120/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_120/bias/v
}
*Adam/conv2d_120/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_120/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_121/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_121/kernel/v

,Adam/conv2d_121/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_121/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_121/bias/v
}
*Adam/conv2d_121/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_122/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_122/kernel/v

,Adam/conv2d_122/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_122/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_122/bias/v
}
*Adam/conv2d_122/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_40/kernel/v

*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
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
VARIABLE_VALUEconv2d_120/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_120/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_121/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_121/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_122/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_122/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_40/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_40/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv2d_120/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_120/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_121/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_121/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_122/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_122/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_120/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_120/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_121/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_121/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_122/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_122/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_conv2d_120_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙
Ű
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_120_inputconv2d_120/kernelconv2d_120/biasconv2d_121/kernelconv2d_121/biasconv2d_122/kernelconv2d_122/biasdense_40/kerneldense_40/bias*
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
%__inference_signature_wrapper_1144397
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Í
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_120/kernel/Read/ReadVariableOp#conv2d_120/bias/Read/ReadVariableOp%conv2d_121/kernel/Read/ReadVariableOp#conv2d_121/bias/Read/ReadVariableOp%conv2d_122/kernel/Read/ReadVariableOp#conv2d_122/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_120/kernel/m/Read/ReadVariableOp*Adam/conv2d_120/bias/m/Read/ReadVariableOp,Adam/conv2d_121/kernel/m/Read/ReadVariableOp*Adam/conv2d_121/bias/m/Read/ReadVariableOp,Adam/conv2d_122/kernel/m/Read/ReadVariableOp*Adam/conv2d_122/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp,Adam/conv2d_120/kernel/v/Read/ReadVariableOp*Adam/conv2d_120/bias/v/Read/ReadVariableOp,Adam/conv2d_121/kernel/v/Read/ReadVariableOp*Adam/conv2d_121/bias/v/Read/ReadVariableOp,Adam/conv2d_122/kernel/v/Read/ReadVariableOp*Adam/conv2d_122/bias/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOpConst*.
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
 __inference__traced_save_1144667
´
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_120/kernelconv2d_120/biasconv2d_121/kernelconv2d_121/biasconv2d_122/kernelconv2d_122/biasdense_40/kerneldense_40/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_120/kernel/mAdam/conv2d_120/bias/mAdam/conv2d_121/kernel/mAdam/conv2d_121/bias/mAdam/conv2d_122/kernel/mAdam/conv2d_122/bias/mAdam/dense_40/kernel/mAdam/dense_40/bias/mAdam/conv2d_120/kernel/vAdam/conv2d_120/bias/vAdam/conv2d_121/kernel/vAdam/conv2d_121/bias/vAdam/conv2d_122/kernel/vAdam/conv2d_122/bias/vAdam/dense_40/kernel/vAdam/dense_40/bias/v*-
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
#__inference__traced_restore_1144776Ě
Í

*__inference_dense_40_layer_call_fn_1144534

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
E__inference_dense_40_layer_call_and_return_conditional_losses_1143998o
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


G__inference_conv2d_122_layer_call_and_return_conditional_losses_1143965

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

e
,__inference_dropout_40_layer_call_fn_1144497

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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144060w
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
÷&
ť
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144214
conv2d_120_input,
conv2d_120_1144188: 
conv2d_120_1144190:,
conv2d_121_1144194:  
conv2d_121_1144196: ,
conv2d_122_1144200: @ 
conv2d_122_1144202:@$
dense_40_1144208:

dense_40_1144210:
identity˘"conv2d_120/StatefulPartitionedCall˘"conv2d_121/StatefulPartitionedCall˘"conv2d_122/StatefulPartitionedCall˘ dense_40/StatefulPartitionedCall
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallconv2d_120_inputconv2d_120_1144188conv2d_120_1144190*
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
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1143929ű
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1143884Ş
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_1144194conv2d_121_1144196*
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
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1143947ű
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1143896Ş
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_1144200conv2d_122_1144202*
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
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1143965ű
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1143908ě
dropout_40/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1143977ß
flatten_40/PartitionedCallPartitionedCall#dropout_40/PartitionedCall:output:0*
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
G__inference_flatten_40_layer_call_and_return_conditional_losses_1143985
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_40_1144208dense_40_1144210*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_1143998x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
NoOpNoOp#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_120_input

j
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1144427

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

j
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1143896

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
Á
O
3__inference_max_pooling2d_121_layer_call_fn_1144452

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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1143896
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
çG
ĺ
 __inference__traced_save_1144667
file_prefix0
,savev2_conv2d_120_kernel_read_readvariableop.
*savev2_conv2d_120_bias_read_readvariableop0
,savev2_conv2d_121_kernel_read_readvariableop.
*savev2_conv2d_121_bias_read_readvariableop0
,savev2_conv2d_122_kernel_read_readvariableop.
*savev2_conv2d_122_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_120_kernel_m_read_readvariableop5
1savev2_adam_conv2d_120_bias_m_read_readvariableop7
3savev2_adam_conv2d_121_kernel_m_read_readvariableop5
1savev2_adam_conv2d_121_bias_m_read_readvariableop7
3savev2_adam_conv2d_122_kernel_m_read_readvariableop5
1savev2_adam_conv2d_122_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableop7
3savev2_adam_conv2d_120_kernel_v_read_readvariableop5
1savev2_adam_conv2d_120_bias_v_read_readvariableop7
3savev2_adam_conv2d_121_kernel_v_read_readvariableop5
1savev2_adam_conv2d_121_bias_v_read_readvariableop7
3savev2_adam_conv2d_122_kernel_v_read_readvariableop5
1savev2_adam_conv2d_122_bias_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_120_kernel_read_readvariableop*savev2_conv2d_120_bias_read_readvariableop,savev2_conv2d_121_kernel_read_readvariableop*savev2_conv2d_121_bias_read_readvariableop,savev2_conv2d_122_kernel_read_readvariableop*savev2_conv2d_122_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_120_kernel_m_read_readvariableop1savev2_adam_conv2d_120_bias_m_read_readvariableop3savev2_adam_conv2d_121_kernel_m_read_readvariableop1savev2_adam_conv2d_121_bias_m_read_readvariableop3savev2_adam_conv2d_122_kernel_m_read_readvariableop1savev2_adam_conv2d_122_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop3savev2_adam_conv2d_120_kernel_v_read_readvariableop1savev2_adam_conv2d_120_bias_v_read_readvariableop3savev2_adam_conv2d_121_kernel_v_read_readvariableop1savev2_adam_conv2d_121_bias_v_read_readvariableop3savev2_adam_conv2d_122_kernel_v_read_readvariableop1savev2_adam_conv2d_122_bias_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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


â
/__inference_sequential_40_layer_call_fn_1144024
conv2d_120_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_120_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144005o
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
_user_specified_nameconv2d_120_input
ű	
Ř
/__inference_sequential_40_layer_call_fn_1144270

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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144005o
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
ç	
Ř
%__inference_signature_wrapper_1144397
conv2d_120_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_120_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_1143875o
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
_user_specified_nameconv2d_120_input


G__inference_conv2d_120_layer_call_and_return_conditional_losses_1144417

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
ó
Ą
,__inference_conv2d_122_layer_call_fn_1144466

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
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1143965w
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
Š

ř
E__inference_dense_40_layer_call_and_return_conditional_losses_1143998

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


G__inference_conv2d_121_layer_call_and_return_conditional_losses_1143947

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
Ů&
ą
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144005

inputs,
conv2d_120_1143930: 
conv2d_120_1143932:,
conv2d_121_1143948:  
conv2d_121_1143950: ,
conv2d_122_1143966: @ 
conv2d_122_1143968:@$
dense_40_1143999:

dense_40_1144001:
identity˘"conv2d_120/StatefulPartitionedCall˘"conv2d_121/StatefulPartitionedCall˘"conv2d_122/StatefulPartitionedCall˘ dense_40/StatefulPartitionedCall
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_120_1143930conv2d_120_1143932*
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
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1143929ű
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1143884Ş
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_1143948conv2d_121_1143950*
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
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1143947ű
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1143896Ş
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_1143966conv2d_122_1143968*
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
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1143965ű
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1143908ě
dropout_40/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1143977ß
flatten_40/PartitionedCallPartitionedCall#dropout_40/PartitionedCall:output:0*
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
G__inference_flatten_40_layer_call_and_return_conditional_losses_1143985
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_40_1143999dense_40_1144001*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_1143998x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
NoOpNoOp#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


G__inference_conv2d_122_layer_call_and_return_conditional_losses_1144477

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
Á
O
3__inference_max_pooling2d_120_layer_call_fn_1144422

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
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1143884
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
Ł(
ŕ
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144243
conv2d_120_input,
conv2d_120_1144217: 
conv2d_120_1144219:,
conv2d_121_1144223:  
conv2d_121_1144225: ,
conv2d_122_1144229: @ 
conv2d_122_1144231:@$
dense_40_1144237:

dense_40_1144239:
identity˘"conv2d_120/StatefulPartitionedCall˘"conv2d_121/StatefulPartitionedCall˘"conv2d_122/StatefulPartitionedCall˘ dense_40/StatefulPartitionedCall˘"dropout_40/StatefulPartitionedCall
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallconv2d_120_inputconv2d_120_1144217conv2d_120_1144219*
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
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1143929ű
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1143884Ş
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_1144223conv2d_121_1144225*
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
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1143947ű
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1143896Ş
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_1144229conv2d_122_1144231*
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
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1143965ű
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1143908ü
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144060ç
flatten_40/PartitionedCallPartitionedCall+dropout_40/StatefulPartitionedCall:output:0*
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
G__inference_flatten_40_layer_call_and_return_conditional_losses_1143985
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_40_1144237dense_40_1144239*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_1143998x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ý
NoOpNoOp#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_120_input
ú
e
G__inference_dropout_40_layer_call_and_return_conditional_losses_1143977

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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1144457

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
ű
Ą
,__inference_conv2d_120_layer_call_fn_1144406

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
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1143929y
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
ú
e
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144502

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
Ć
H
,__inference_dropout_40_layer_call_fn_1144492

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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1143977h
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
Š

ř
E__inference_dense_40_layer_call_and_return_conditional_losses_1144545

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
ş
H
,__inference_flatten_40_layer_call_fn_1144519

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
G__inference_flatten_40_layer_call_and_return_conditional_losses_1143985b
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
Ë
c
G__inference_flatten_40_layer_call_and_return_conditional_losses_1143985

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


G__inference_conv2d_120_layer_call_and_return_conditional_losses_1143929

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
ű	
Ř
/__inference_sequential_40_layer_call_fn_1144291

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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144145o
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
ę.
ó
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144329

inputsC
)conv2d_120_conv2d_readvariableop_resource:8
*conv2d_120_biasadd_readvariableop_resource:C
)conv2d_121_conv2d_readvariableop_resource: 8
*conv2d_121_biasadd_readvariableop_resource: C
)conv2d_122_conv2d_readvariableop_resource: @8
*conv2d_122_biasadd_readvariableop_resource:@;
'dense_40_matmul_readvariableop_resource:
6
(dense_40_biasadd_readvariableop_resource:
identity˘!conv2d_120/BiasAdd/ReadVariableOp˘ conv2d_120/Conv2D/ReadVariableOp˘!conv2d_121/BiasAdd/ReadVariableOp˘ conv2d_121/Conv2D/ReadVariableOp˘!conv2d_122/BiasAdd/ReadVariableOp˘ conv2d_122/Conv2D/ReadVariableOp˘dense_40/BiasAdd/ReadVariableOp˘dense_40/MatMul/ReadVariableOp
 conv2d_120/Conv2D/ReadVariableOpReadVariableOp)conv2d_120_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ą
conv2d_120/Conv2DConv2Dinputs(conv2d_120/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

!conv2d_120/BiasAdd/ReadVariableOpReadVariableOp*conv2d_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
conv2d_120/BiasAddBiasAddconv2d_120/Conv2D:output:0)conv2d_120/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙p
conv2d_120/ReluReluconv2d_120/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙°
max_pooling2d_120/MaxPoolMaxPoolconv2d_120/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
ksize
*
paddingVALID*
strides

 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ë
conv2d_121/Conv2DConv2D"max_pooling2d_120/MaxPool:output:0(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides

!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ n
conv2d_121/ReluReluconv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ °
max_pooling2d_121/MaxPoolMaxPoolconv2d_121/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
ksize
*
paddingVALID*
strides

 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ë
conv2d_122/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides

!conv2d_122/BiasAdd/ReadVariableOpReadVariableOp*conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_122/BiasAddBiasAddconv2d_122/Conv2D:output:0)conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @n
conv2d_122/ReluReluconv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @°
max_pooling2d_122/MaxPoolMaxPoolconv2d_122/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides
}
dropout_40/IdentityIdentity"max_pooling2d_122/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
flatten_40/ReshapeReshapedropout_40/Identity:output:0flatten_40/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_40/MatMulMatMulflatten_40/Reshape:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_40/SoftmaxSoftmaxdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_40/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp"^conv2d_120/BiasAdd/ReadVariableOp!^conv2d_120/Conv2D/ReadVariableOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp"^conv2d_122/BiasAdd/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2F
!conv2d_120/BiasAdd/ReadVariableOp!conv2d_120/BiasAdd/ReadVariableOp2D
 conv2d_120/Conv2D/ReadVariableOp conv2d_120/Conv2D/ReadVariableOp2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2F
!conv2d_122/BiasAdd/ReadVariableOp!conv2d_122/BiasAdd/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ó
Ą
,__inference_conv2d_121_layer_call_fn_1144436

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
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1143947w
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
 
_user_specified_nameinputs
(
Ö
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144145

inputs,
conv2d_120_1144119: 
conv2d_120_1144121:,
conv2d_121_1144125:  
conv2d_121_1144127: ,
conv2d_122_1144131: @ 
conv2d_122_1144133:@$
dense_40_1144139:

dense_40_1144141:
identity˘"conv2d_120/StatefulPartitionedCall˘"conv2d_121/StatefulPartitionedCall˘"conv2d_122/StatefulPartitionedCall˘ dense_40/StatefulPartitionedCall˘"dropout_40/StatefulPartitionedCall
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_120_1144119conv2d_120_1144121*
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
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1143929ű
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1143884Ş
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_1144125conv2d_121_1144127*
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
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1143947ű
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1143896Ş
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_1144131conv2d_122_1144133*
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
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1143965ű
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1143908ü
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144060ç
flatten_40/PartitionedCallPartitionedCall+dropout_40/StatefulPartitionedCall:output:0*
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
G__inference_flatten_40_layer_call_and_return_conditional_losses_1143985
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_40_1144139dense_40_1144141*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_1143998x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ý
NoOpNoOp#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ë
c
G__inference_flatten_40_layer_call_and_return_conditional_losses_1144525

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
 
˝
#__inference__traced_restore_1144776
file_prefix<
"assignvariableop_conv2d_120_kernel:0
"assignvariableop_1_conv2d_120_bias:>
$assignvariableop_2_conv2d_121_kernel: 0
"assignvariableop_3_conv2d_121_bias: >
$assignvariableop_4_conv2d_122_kernel: @0
"assignvariableop_5_conv2d_122_bias:@6
"assignvariableop_6_dense_40_kernel:
.
 assignvariableop_7_dense_40_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: F
,assignvariableop_17_adam_conv2d_120_kernel_m:8
*assignvariableop_18_adam_conv2d_120_bias_m:F
,assignvariableop_19_adam_conv2d_121_kernel_m: 8
*assignvariableop_20_adam_conv2d_121_bias_m: F
,assignvariableop_21_adam_conv2d_122_kernel_m: @8
*assignvariableop_22_adam_conv2d_122_bias_m:@>
*assignvariableop_23_adam_dense_40_kernel_m:
6
(assignvariableop_24_adam_dense_40_bias_m:F
,assignvariableop_25_adam_conv2d_120_kernel_v:8
*assignvariableop_26_adam_conv2d_120_bias_v:F
,assignvariableop_27_adam_conv2d_121_kernel_v: 8
*assignvariableop_28_adam_conv2d_121_bias_v: F
,assignvariableop_29_adam_conv2d_122_kernel_v: @8
*assignvariableop_30_adam_conv2d_122_bias_v:@>
*assignvariableop_31_adam_dense_40_kernel_v:
6
(assignvariableop_32_adam_dense_40_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_120_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_120_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_121_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_121_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_122_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_122_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_40_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_40_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_conv2d_120_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv2d_120_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_121_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_121_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_122_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_122_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_40_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_40_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_120_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_120_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_121_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_121_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_122_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_122_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_40_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_40_bias_vIdentity_32:output:0"/device:CPU:0*
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

j
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1143884

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


G__inference_conv2d_121_layer_call_and_return_conditional_losses_1144447

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

j
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1144487

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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144060

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
Ý9
ľ
"__inference__wrapped_model_1143875
conv2d_120_inputQ
7sequential_40_conv2d_120_conv2d_readvariableop_resource:F
8sequential_40_conv2d_120_biasadd_readvariableop_resource:Q
7sequential_40_conv2d_121_conv2d_readvariableop_resource: F
8sequential_40_conv2d_121_biasadd_readvariableop_resource: Q
7sequential_40_conv2d_122_conv2d_readvariableop_resource: @F
8sequential_40_conv2d_122_biasadd_readvariableop_resource:@I
5sequential_40_dense_40_matmul_readvariableop_resource:
D
6sequential_40_dense_40_biasadd_readvariableop_resource:
identity˘/sequential_40/conv2d_120/BiasAdd/ReadVariableOp˘.sequential_40/conv2d_120/Conv2D/ReadVariableOp˘/sequential_40/conv2d_121/BiasAdd/ReadVariableOp˘.sequential_40/conv2d_121/Conv2D/ReadVariableOp˘/sequential_40/conv2d_122/BiasAdd/ReadVariableOp˘.sequential_40/conv2d_122/Conv2D/ReadVariableOp˘-sequential_40/dense_40/BiasAdd/ReadVariableOp˘,sequential_40/dense_40/MatMul/ReadVariableOpŽ
.sequential_40/conv2d_120/Conv2D/ReadVariableOpReadVariableOp7sequential_40_conv2d_120_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0×
sequential_40/conv2d_120/Conv2DConv2Dconv2d_120_input6sequential_40/conv2d_120/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
¤
/sequential_40/conv2d_120/BiasAdd/ReadVariableOpReadVariableOp8sequential_40_conv2d_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ę
 sequential_40/conv2d_120/BiasAddBiasAdd(sequential_40/conv2d_120/Conv2D:output:07sequential_40/conv2d_120/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_40/conv2d_120/ReluRelu)sequential_40/conv2d_120/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Ě
'sequential_40/max_pooling2d_120/MaxPoolMaxPool+sequential_40/conv2d_120/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
ksize
*
paddingVALID*
strides
Ž
.sequential_40/conv2d_121/Conv2D/ReadVariableOpReadVariableOp7sequential_40_conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ő
sequential_40/conv2d_121/Conv2DConv2D0sequential_40/max_pooling2d_120/MaxPool:output:06sequential_40/conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides
¤
/sequential_40/conv2d_121/BiasAdd/ReadVariableOpReadVariableOp8sequential_40_conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Č
 sequential_40/conv2d_121/BiasAddBiasAdd(sequential_40/conv2d_121/Conv2D:output:07sequential_40/conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
sequential_40/conv2d_121/ReluRelu)sequential_40/conv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ Ě
'sequential_40/max_pooling2d_121/MaxPoolMaxPool+sequential_40/conv2d_121/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
ksize
*
paddingVALID*
strides
Ž
.sequential_40/conv2d_122/Conv2D/ReadVariableOpReadVariableOp7sequential_40_conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ő
sequential_40/conv2d_122/Conv2DConv2D0sequential_40/max_pooling2d_121/MaxPool:output:06sequential_40/conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides
¤
/sequential_40/conv2d_122/BiasAdd/ReadVariableOpReadVariableOp8sequential_40_conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Č
 sequential_40/conv2d_122/BiasAddBiasAdd(sequential_40/conv2d_122/Conv2D:output:07sequential_40/conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
sequential_40/conv2d_122/ReluRelu)sequential_40/conv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @Ě
'sequential_40/max_pooling2d_122/MaxPoolMaxPool+sequential_40/conv2d_122/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides

!sequential_40/dropout_40/IdentityIdentity0sequential_40/max_pooling2d_122/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@o
sequential_40/flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  ´
 sequential_40/flatten_40/ReshapeReshape*sequential_40/dropout_40/Identity:output:0'sequential_40/flatten_40/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
,sequential_40/dense_40/MatMul/ReadVariableOpReadVariableOp5sequential_40_dense_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0ş
sequential_40/dense_40/MatMulMatMul)sequential_40/flatten_40/Reshape:output:04sequential_40/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_40/dense_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_40_dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ť
sequential_40/dense_40/BiasAddBiasAdd'sequential_40/dense_40/MatMul:product:05sequential_40/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_40/dense_40/SoftmaxSoftmax'sequential_40/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
IdentityIdentity(sequential_40/dense_40/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
NoOpNoOp0^sequential_40/conv2d_120/BiasAdd/ReadVariableOp/^sequential_40/conv2d_120/Conv2D/ReadVariableOp0^sequential_40/conv2d_121/BiasAdd/ReadVariableOp/^sequential_40/conv2d_121/Conv2D/ReadVariableOp0^sequential_40/conv2d_122/BiasAdd/ReadVariableOp/^sequential_40/conv2d_122/Conv2D/ReadVariableOp.^sequential_40/dense_40/BiasAdd/ReadVariableOp-^sequential_40/dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2b
/sequential_40/conv2d_120/BiasAdd/ReadVariableOp/sequential_40/conv2d_120/BiasAdd/ReadVariableOp2`
.sequential_40/conv2d_120/Conv2D/ReadVariableOp.sequential_40/conv2d_120/Conv2D/ReadVariableOp2b
/sequential_40/conv2d_121/BiasAdd/ReadVariableOp/sequential_40/conv2d_121/BiasAdd/ReadVariableOp2`
.sequential_40/conv2d_121/Conv2D/ReadVariableOp.sequential_40/conv2d_121/Conv2D/ReadVariableOp2b
/sequential_40/conv2d_122/BiasAdd/ReadVariableOp/sequential_40/conv2d_122/BiasAdd/ReadVariableOp2`
.sequential_40/conv2d_122/Conv2D/ReadVariableOp.sequential_40/conv2d_122/Conv2D/ReadVariableOp2^
-sequential_40/dense_40/BiasAdd/ReadVariableOp-sequential_40/dense_40/BiasAdd/ReadVariableOp2\
,sequential_40/dense_40/MatMul/ReadVariableOp,sequential_40/dense_40/MatMul/ReadVariableOp:c _
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameconv2d_120_input
Á
O
3__inference_max_pooling2d_122_layer_call_fn_1144482

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
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1143908
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
ľ

f
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144514

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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144374

inputsC
)conv2d_120_conv2d_readvariableop_resource:8
*conv2d_120_biasadd_readvariableop_resource:C
)conv2d_121_conv2d_readvariableop_resource: 8
*conv2d_121_biasadd_readvariableop_resource: C
)conv2d_122_conv2d_readvariableop_resource: @8
*conv2d_122_biasadd_readvariableop_resource:@;
'dense_40_matmul_readvariableop_resource:
6
(dense_40_biasadd_readvariableop_resource:
identity˘!conv2d_120/BiasAdd/ReadVariableOp˘ conv2d_120/Conv2D/ReadVariableOp˘!conv2d_121/BiasAdd/ReadVariableOp˘ conv2d_121/Conv2D/ReadVariableOp˘!conv2d_122/BiasAdd/ReadVariableOp˘ conv2d_122/Conv2D/ReadVariableOp˘dense_40/BiasAdd/ReadVariableOp˘dense_40/MatMul/ReadVariableOp
 conv2d_120/Conv2D/ReadVariableOpReadVariableOp)conv2d_120_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ą
conv2d_120/Conv2DConv2Dinputs(conv2d_120/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

!conv2d_120/BiasAdd/ReadVariableOpReadVariableOp*conv2d_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
conv2d_120/BiasAddBiasAddconv2d_120/Conv2D:output:0)conv2d_120/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙p
conv2d_120/ReluReluconv2d_120/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙°
max_pooling2d_120/MaxPoolMaxPoolconv2d_120/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
ksize
*
paddingVALID*
strides

 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ë
conv2d_121/Conv2DConv2D"max_pooling2d_120/MaxPool:output:0(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
paddingSAME*
strides

!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ n
conv2d_121/ReluReluconv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ °
max_pooling2d_121/MaxPoolMaxPoolconv2d_121/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
ksize
*
paddingVALID*
strides

 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ë
conv2d_122/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
paddingSAME*
strides

!conv2d_122/BiasAdd/ReadVariableOpReadVariableOp*conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_122/BiasAddBiasAddconv2d_122/Conv2D:output:0)conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @n
conv2d_122/ReluReluconv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @°
max_pooling2d_122/MaxPoolMaxPoolconv2d_122/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
paddingVALID*
strides
]
dropout_40/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_40/dropout/MulMul"max_pooling2d_122/MaxPool:output:0!dropout_40/dropout/Const:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@j
dropout_40/dropout/ShapeShape"max_pooling2d_122/MaxPool:output:0*
T0*
_output_shapes
:Ş
/dropout_40/dropout/random_uniform/RandomUniformRandomUniform!dropout_40/dropout/Shape:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
dtype0f
!dropout_40/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ď
dropout_40/dropout/GreaterEqualGreaterEqual8dropout_40/dropout/random_uniform/RandomUniform:output:0*dropout_40/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dropout_40/dropout/CastCast#dropout_40/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
dropout_40/dropout/Mul_1Muldropout_40/dropout/Mul:z:0dropout_40/dropout/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@a
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
flatten_40/ReshapeReshapedropout_40/dropout/Mul_1:z:0flatten_40/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_40/MatMulMatMulflatten_40/Reshape:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_40/SoftmaxSoftmaxdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_40/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp"^conv2d_120/BiasAdd/ReadVariableOp!^conv2d_120/Conv2D/ReadVariableOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp"^conv2d_122/BiasAdd/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : 2F
!conv2d_120/BiasAdd/ReadVariableOp!conv2d_120/BiasAdd/ReadVariableOp2D
 conv2d_120/Conv2D/ReadVariableOp conv2d_120/Conv2D/ReadVariableOp2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2F
!conv2d_122/BiasAdd/ReadVariableOp!conv2d_122/BiasAdd/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


â
/__inference_sequential_40_layer_call_fn_1144185
conv2d_120_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_120_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144145o
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
_user_specified_nameconv2d_120_input

j
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1143908

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
conv2d_120_inputC
"serving_default_conv2d_120_input:0˙˙˙˙˙˙˙˙˙<
dense_400
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
/__inference_sequential_40_layer_call_fn_1144024
/__inference_sequential_40_layer_call_fn_1144270
/__inference_sequential_40_layer_call_fn_1144291
/__inference_sequential_40_layer_call_fn_1144185Ŕ
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144329
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144374
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144214
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144243Ŕ
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
"__inference__wrapped_model_1143875conv2d_120_input"
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
+:)2conv2d_120/kernel
:2conv2d_120/bias
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
,__inference_conv2d_120_layer_call_fn_1144406˘
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
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1144417˘
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
3__inference_max_pooling2d_120_layer_call_fn_1144422˘
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
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1144427˘
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
+:) 2conv2d_121/kernel
: 2conv2d_121/bias
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
,__inference_conv2d_121_layer_call_fn_1144436˘
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
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1144447˘
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
3__inference_max_pooling2d_121_layer_call_fn_1144452˘
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
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1144457˘
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
+:) @2conv2d_122/kernel
:@2conv2d_122/bias
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
,__inference_conv2d_122_layer_call_fn_1144466˘
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
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1144477˘
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
3__inference_max_pooling2d_122_layer_call_fn_1144482˘
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
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1144487˘
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
,__inference_dropout_40_layer_call_fn_1144492
,__inference_dropout_40_layer_call_fn_1144497´
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
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144502
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144514´
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
,__inference_flatten_40_layer_call_fn_1144519˘
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
G__inference_flatten_40_layer_call_and_return_conditional_losses_1144525˘
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
2dense_40/kernel
:2dense_40/bias
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
*__inference_dense_40_layer_call_fn_1144534˘
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
E__inference_dense_40_layer_call_and_return_conditional_losses_1144545˘
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
%__inference_signature_wrapper_1144397conv2d_120_input"
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
0:.2Adam/conv2d_120/kernel/m
": 2Adam/conv2d_120/bias/m
0:. 2Adam/conv2d_121/kernel/m
":  2Adam/conv2d_121/bias/m
0:. @2Adam/conv2d_122/kernel/m
": @2Adam/conv2d_122/bias/m
(:&
2Adam/dense_40/kernel/m
 :2Adam/dense_40/bias/m
0:.2Adam/conv2d_120/kernel/v
": 2Adam/conv2d_120/bias/v
0:. 2Adam/conv2d_121/kernel/v
":  2Adam/conv2d_121/bias/v
0:. @2Adam/conv2d_122/kernel/v
": @2Adam/conv2d_122/bias/v
(:&
2Adam/dense_40/kernel/v
 :2Adam/dense_40/bias/vŤ
"__inference__wrapped_model_1143875!"/0JKC˘@
9˘6
41
conv2d_120_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_40"
dense_40˙˙˙˙˙˙˙˙˙ť
G__inference_conv2d_120_layer_call_and_return_conditional_losses_1144417p9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
,__inference_conv2d_120_layer_call_fn_1144406c9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ""˙˙˙˙˙˙˙˙˙ˇ
G__inference_conv2d_121_layer_call_and_return_conditional_losses_1144447l!"7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@@
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@@ 
 
,__inference_conv2d_121_layer_call_fn_1144436_!"7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@@
Ş " ˙˙˙˙˙˙˙˙˙@@ ˇ
G__inference_conv2d_122_layer_call_and_return_conditional_losses_1144477l/07˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙   
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙  @
 
,__inference_conv2d_122_layer_call_fn_1144466_/07˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙   
Ş " ˙˙˙˙˙˙˙˙˙  @§
E__inference_dense_40_layer_call_and_return_conditional_losses_1144545^JK1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
*__inference_dense_40_layer_call_fn_1144534QJK1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙ˇ
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144502l;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@
 ˇ
G__inference_dropout_40_layer_call_and_return_conditional_losses_1144514l;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙@
 
,__inference_dropout_40_layer_call_fn_1144492_;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş " ˙˙˙˙˙˙˙˙˙@
,__inference_dropout_40_layer_call_fn_1144497_;˘8
1˘.
(%
inputs˙˙˙˙˙˙˙˙˙@
p
Ş " ˙˙˙˙˙˙˙˙˙@­
G__inference_flatten_40_layer_call_and_return_conditional_losses_1144525b7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ş "'˘$

0˙˙˙˙˙˙˙˙˙
 
,__inference_flatten_40_layer_call_fn_1144519U7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@
Ş "˙˙˙˙˙˙˙˙˙ń
N__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_1144427R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 É
3__inference_max_pooling2d_120_layer_call_fn_1144422R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ń
N__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_1144457R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 É
3__inference_max_pooling2d_121_layer_call_fn_1144452R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ń
N__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_1144487R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 É
3__inference_max_pooling2d_122_layer_call_fn_1144482R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ě
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144214~!"/0JKK˘H
A˘>
41
conv2d_120_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ě
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144243~!"/0JKK˘H
A˘>
41
conv2d_120_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Â
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144329t!"/0JKA˘>
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_1144374t!"/0JKA˘>
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
/__inference_sequential_40_layer_call_fn_1144024q!"/0JKK˘H
A˘>
41
conv2d_120_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙¤
/__inference_sequential_40_layer_call_fn_1144185q!"/0JKK˘H
A˘>
41
conv2d_120_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_40_layer_call_fn_1144270g!"/0JKA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_40_layer_call_fn_1144291g!"/0JKA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙Â
%__inference_signature_wrapper_1144397!"/0JKW˘T
˘ 
MŞJ
H
conv2d_120_input41
conv2d_120_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_40"
dense_40˙˙˙˙˙˙˙˙˙
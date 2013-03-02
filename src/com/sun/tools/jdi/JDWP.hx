package com.sun.tools.jdi;
/**
* Java(tm) Debug Wire Protocol
*/
@:internal extern class JDWP
{
	
}
@:native('com$sun$tools$jdi$JDWP$VirtualMachine') @:internal extern class JDWP_VirtualMachine
{
	
}
/**
* Returns the JDWP version implemented by the target VM. 
* The version string format is implementation dependent. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$Version') @:internal extern class JDWP_VirtualMachine_Version
{
	
}
/**
* Returns reference types for all the classes loaded by the target VM 
* which match the given signature. 
* Multple reference types will be returned if two or more class 
* loaders have loaded a class of the same name. 
* The search is confined to loaded classes only; no attempt is made 
* to load a class of the given signature. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$ClassesBySignature') @:internal extern class JDWP_VirtualMachine_ClassesBySignature
{
	
}
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$ClassesBySignature$ClassInfo') @:internal extern class JDWP_VirtualMachine_ClassesBySignature_ClassInfo
{
	
}
/**
* Returns reference types for all classes currently loaded by the 
* target VM.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$AllClasses') @:internal extern class JDWP_VirtualMachine_AllClasses
{
	
}
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$AllClasses$ClassInfo') @:internal extern class JDWP_VirtualMachine_AllClasses_ClassInfo
{
	
}
/**
* Returns all threads currently running in the target VM . 
* The returned list contains threads created through 
* java.lang.Thread, all native threads attached to 
* the target VM through JNI, and system threads created 
* by the target VM. Threads that have not yet been started 
* and threads that have completed their execution are not 
* included in the returned list. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$AllThreads') @:internal extern class JDWP_VirtualMachine_AllThreads
{
	
}
/**
* Returns all thread groups that do not have a parent. This command 
* may be used as the first step in building a tree (or trees) of the 
* existing thread groups.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$TopLevelThreadGroups') @:internal extern class JDWP_VirtualMachine_TopLevelThreadGroups
{
	
}
/**
* Invalidates this virtual machine mirror. 
* The communication channel to the target VM is closed, and 
* the target VM prepares to accept another subsequent connection 
* from this debugger or another debugger, including the 
* following tasks: 
* <ul>
* <li>All event requests are cancelled. 
* <li>All threads suspended by the thread-level 
* <a href="#JDWP_ThreadReference_Resume">resume</a> command 
* or the VM-level 
* <a href="#JDWP_VirtualMachine_Resume">resume</a> command 
* are resumed as many times as necessary for them to run. 
* <li>Garbage collection is re-enabled in all cases where it was 
* <a href="#JDWP_ObjectReference_DisableCollection">disabled</a> 
* </ul>
* Any current method invocations executing in the target VM 
* are continued after the disconnection. Upon completion of any such 
* method invocation, the invoking thread continues from the 
* location where it was originally stopped. 
* <p>
* Resources originating in  
* this VirtualMachine (ObjectReferences, ReferenceTypes, etc.) 
* will become invalid. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$Dispose') @:internal extern class JDWP_VirtualMachine_Dispose
{
	
}
/**
* Returns the sizes of variably-sized data types in the target VM.
* The returned values indicate the number of bytes used by the 
* identifiers in command and reply packets.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$IDSizes') @:internal extern class JDWP_VirtualMachine_IDSizes
{
	
}
/**
* Suspends the execution of the application running in the target 
* VM. All Java threads currently running will be suspended. 
* <p>
* Unlike java.lang.Thread.suspend, 
* suspends of both the virtual machine and individual threads are 
* counted. Before a thread will run again, it must be resumed through 
* the <a href="#JDWP_VirtualMachine_Resume">VM-level resume</a> command 
* or the <a href="#JDWP_ThreadReference_Resume">thread-level resume</a> command 
* the same number of times it has been suspended. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$Suspend') @:internal extern class JDWP_VirtualMachine_Suspend
{
	
}
/**
* Resumes execution of the application after the suspend 
* command or an event has stopped it. 
* Suspensions of the Virtual Machine and individual threads are 
* counted. If a particular thread is suspended n times, it must 
* resumed n times before it will continue. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$Resume') @:internal extern class JDWP_VirtualMachine_Resume
{
	
}
/**
* Terminates the target VM with the given exit code. 
* On some platforms, the exit code might be truncated, for 
* example, to the low order 8 bits. 
* All ids previously returned from the target VM become invalid. 
* Threads running in the VM are abruptly terminated. 
* A thread death exception is not thrown and 
* finally blocks are not run.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$Exit') @:internal extern class JDWP_VirtualMachine_Exit
{
	
}
/**
* Creates a new string object in the target VM and returns 
* its id. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$CreateString') @:internal extern class JDWP_VirtualMachine_CreateString
{
	
}
/**
* Retrieve this VM's capabilities. The capabilities are returned 
* as booleans, each indicating the presence or absence of a 
* capability. The commands associated with each capability will 
* return the NOT_IMPLEMENTED error if the cabability is not 
* available.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$Capabilities') @:internal extern class JDWP_VirtualMachine_Capabilities
{
	
}
/**
* Retrieve the classpath and bootclasspath of the target VM. 
* If the classpath is not defined, returns an empty list. If the 
* bootclasspath is not defined returns an empty list.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$ClassPaths') @:internal extern class JDWP_VirtualMachine_ClassPaths
{
	
}
/**
* Releases a list of object IDs. For each object in the list, the 
* following applies. 
* The count of references held by the back-end (the reference 
* count) will be decremented by refCnt. 
* If thereafter the reference count is less than 
* or equal to zero, the ID is freed. 
* Any back-end resources associated with the freed ID may 
* be freed, and if garbage collection was 
* disabled for the object, it will be re-enabled. 
* The sender of this command 
* promises that no further commands will be sent 
* referencing a freed ID.
* <p>
* Use of this command is not required. If it is not sent, 
* resources associated with each ID will be freed by the back-end 
* at some time after the corresponding object is garbage collected. 
* It is most useful to use this command to reduce the load on the 
* back-end if a very large number of 
* objects has been retrieved from the back-end (a large array, 
* for example) but may not be garbage collected any time soon. 
* <p>
* IDs may be re-used by the back-end after they 
* have been freed with this command.
* This description assumes reference counting, 
* a back-end may use any implementation which operates 
* equivalently. 
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$DisposeObjects') @:internal extern class JDWP_VirtualMachine_DisposeObjects
{
	
}
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$DisposeObjects$Request') @:internal extern class JDWP_VirtualMachine_DisposeObjects_Request
{
	
}
/**
* Tells the target VM to stop sending events. Events are not discarded; 
* they are held until a subsequent ReleaseEvents command is sent. 
* This command is useful to control the number of events sent 
* to the debugger VM in situations where very large numbers of events 
* are generated. 
* While events are held by the debugger back-end, application 
* execution may be frozen by the debugger back-end to prevent 
* buffer overflows on the back end. 
* Responses to commands are never held and are not affected by this 
* command. If events are already being held, this command is 
* ignored.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$HoldEvents') @:internal extern class JDWP_VirtualMachine_HoldEvents
{
	
}
/**
* Tells the target VM to continue sending events. This command is 
* used to restore normal activity after a HoldEvents command. If 
* there is no current HoldEvents command in effect, this command is 
* ignored.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$ReleaseEvents') @:internal extern class JDWP_VirtualMachine_ReleaseEvents
{
	
}
/**
* Retrieve all of this VM's capabilities. The capabilities are returned 
* as booleans, each indicating the presence or absence of a 
* capability. The commands associated with each capability will 
* return the NOT_IMPLEMENTED error if the cabability is not 
* available.
* Since JDWP version 1.4.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$CapabilitiesNew') @:internal extern class JDWP_VirtualMachine_CapabilitiesNew
{
	
}
/**
* Installs new class definitions. 
* If there are active stack frames in methods of the redefined classes in the 
* target VM then those active frames continue to run the bytecodes of the 
* original method. These methods are considered obsolete - see 
* <a href="#JDWP_Method_IsObsolete">IsObsolete</a>. The methods in the 
* redefined classes will be used for new invokes in the target VM. 
* The original method ID refers to the redefined method. 
* All breakpoints in the redefined classes are cleared.
* If resetting of stack frames is desired, the 
* <a href="#JDWP_StackFrame_PopFrames">PopFrames</a> command can be used 
* to pop frames with obsolete methods.
* <p>
* Requires canRedefineClasses capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>. 
* In addition to the canRedefineClasses capability, the target VM must 
* have the canAddMethod capability to add methods when redefining classes, 
* or the canUnrestrictedlyRedefineClasses to redefine classes in arbitrary 
* ways.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$RedefineClasses') @:internal extern class JDWP_VirtualMachine_RedefineClasses
{
	
}
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$RedefineClasses$ClassDef') @:internal extern class JDWP_VirtualMachine_RedefineClasses_ClassDef
{
	
}
/**
* Set the default stratum. Requires canSetDefaultStratum capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$SetDefaultStratum') @:internal extern class JDWP_VirtualMachine_SetDefaultStratum
{
	
}
/**
* Returns reference types for all classes currently loaded by the 
* target VM.  
* Both the JNI signature and the generic signature are 
* returned for each class.  
* Generic signatures are described in the signature attribute 
* section in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* Since JDWP version 1.5.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$AllClassesWithGeneric') @:internal extern class JDWP_VirtualMachine_AllClassesWithGeneric
{
	
}
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$AllClassesWithGeneric$ClassInfo') @:internal extern class JDWP_VirtualMachine_AllClassesWithGeneric_ClassInfo
{
	
}
/**
* Returns the number of instances of each reference type in the input list. 
* Only instances that are reachable for the purposes of 
* garbage collection are counted.  If a reference type is invalid, 
* eg. it has been unloaded, zero is returned for its instance count.
* <p>Since JDWP version 1.6. Requires canGetInstanceInfo capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$VirtualMachine$InstanceCounts') @:internal extern class JDWP_VirtualMachine_InstanceCounts
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType') @:internal extern class JDWP_ReferenceType
{
	
}
/**
* Returns the JNI signature of a reference type. 
* JNI signature formats are described in the 
* <a href="http://java.sun.com/products/jdk/1.2/docs/guide/jni/index.html">Java Native Inteface Specification</a>
* <p>
* For primitive classes 
* the returned signature is the signature of the corresponding primitive 
* type; for example, "I" is returned as the signature of the class 
* represented by java.lang.Integer.TYPE.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Signature') @:internal extern class JDWP_ReferenceType_Signature
{
	
}
/**
* Returns the instance of java.lang.ClassLoader which loaded 
* a given reference type. If the reference type was loaded by the 
* system class loader, the returned object ID is null.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$ClassLoader') @:internal extern class JDWP_ReferenceType_ClassLoader
{
	
}
/**
* Returns the modifiers (also known as access flags) for a reference type. 
* The returned bit mask contains information on the declaration 
* of the reference type. If the reference type is an array or 
* a primitive class (for example, java.lang.Integer.TYPE), the 
* value of the returned bit mask is undefined.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Modifiers') @:internal extern class JDWP_ReferenceType_Modifiers
{
	
}
/**
* Returns information for each field in a reference type. 
* Inherited fields are not included. 
* The field list will include any synthetic fields created 
* by the compiler. 
* Fields are returned in the order they occur in the class file.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Fields') @:internal extern class JDWP_ReferenceType_Fields
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Fields$FieldInfo') @:internal extern class JDWP_ReferenceType_Fields_FieldInfo
{
	
}
/**
* Returns information for each method in a reference type. 
* Inherited methods are not included. The list of methods will 
* include constructors (identified with the name "&lt;init&gt;"), 
* the initialization method (identified with the name "&lt;clinit&gt;") 
* if present, and any synthetic methods created by the compiler. 
* Methods are returned in the order they occur in the class file.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Methods') @:internal extern class JDWP_ReferenceType_Methods
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Methods$MethodInfo') @:internal extern class JDWP_ReferenceType_Methods_MethodInfo
{
	
}
/**
* Returns the value of one or more static fields of the 
* reference type. Each field must be member of the reference type 
* or one of its superclasses, superinterfaces, or implemented interfaces. 
* Access control is not enforced; for example, the values of private 
* fields can be obtained.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$GetValues') @:internal extern class JDWP_ReferenceType_GetValues
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType$GetValues$Field') @:internal extern class JDWP_ReferenceType_GetValues_Field
{
	
}
/**
* Returns the name of source file in which a reference type was 
* declared. 
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$SourceFile') @:internal extern class JDWP_ReferenceType_SourceFile
{
	
}
/**
* Returns the classes and interfaces directly nested within this type.
* Types further nested within those types are not included. 
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$NestedTypes') @:internal extern class JDWP_ReferenceType_NestedTypes
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType$NestedTypes$TypeInfo') @:internal extern class JDWP_ReferenceType_NestedTypes_TypeInfo
{
	
}
/**
* Returns the current status of the reference type. The status 
* indicates the extent to which the reference type has been 
* initialized, as described in section 2.1.6 of 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* If the class is linked the PREPARED and VERIFIED bits in the returned status bits 
* will be set. If the class is initialized the INITIALIZED bit in the returned 
* status bits will be set. If an error occured during initialization then the 
* ERROR bit in the returned status bits will be set. 
* The returned status bits are undefined for array types and for 
* primitive classes (such as java.lang.Integer.TYPE). 
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Status') @:internal extern class JDWP_ReferenceType_Status
{
	
}
/**
* Returns the interfaces declared as implemented by this class. 
* Interfaces indirectly implemented (extended by the implemented 
* interface or implemented by a superclass) are not included.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Interfaces') @:internal extern class JDWP_ReferenceType_Interfaces
{
	
}
/**
* Returns the class object corresponding to this type. 
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$ClassObject') @:internal extern class JDWP_ReferenceType_ClassObject
{
	
}
/**
* Returns the value of the SourceDebugExtension attribute. 
* Since JDWP version 1.4. Requires canGetSourceDebugExtension capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$SourceDebugExtension') @:internal extern class JDWP_ReferenceType_SourceDebugExtension
{
	
}
/**
* Returns the JNI signature of a reference type along with the 
* generic signature if there is one.  
* Generic signatures are described in the signature attribute 
* section in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* Since JDWP version 1.5.
* <p>
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$SignatureWithGeneric') @:internal extern class JDWP_ReferenceType_SignatureWithGeneric
{
	
}
/**
* Returns information, including the generic signature if any, 
* for each field in a reference type. 
* Inherited fields are not included. 
* The field list will include any synthetic fields created 
* by the compiler. 
* Fields are returned in the order they occur in the class file.  
* Generic signatures are described in the signature attribute 
* section in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* Since JDWP version 1.5.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$FieldsWithGeneric') @:internal extern class JDWP_ReferenceType_FieldsWithGeneric
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType$FieldsWithGeneric$FieldInfo') @:internal extern class JDWP_ReferenceType_FieldsWithGeneric_FieldInfo
{
	
}
/**
* Returns information, including the generic signature if any, 
* for each method in a reference type. 
* Inherited methodss are not included. The list of methods will 
* include constructors (identified with the name "&lt;init&gt;"), 
* the initialization method (identified with the name "&lt;clinit&gt;") 
* if present, and any synthetic methods created by the compiler. 
* Methods are returned in the order they occur in the class file.  
* Generic signatures are described in the signature attribute 
* section in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* Since JDWP version 1.5.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$MethodsWithGeneric') @:internal extern class JDWP_ReferenceType_MethodsWithGeneric
{
	
}
@:native('com$sun$tools$jdi$JDWP$ReferenceType$MethodsWithGeneric$MethodInfo') @:internal extern class JDWP_ReferenceType_MethodsWithGeneric_MethodInfo
{
	
}
/**
* Returns instances of this reference type. 
* Only instances that are reachable for the purposes of 
* garbage collection are returned. 
* <p>Since JDWP version 1.6. Requires canGetInstanceInfo capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$Instances') @:internal extern class JDWP_ReferenceType_Instances
{
	
}
/**
* Returns the class file major and minor version numbers, as defined in the class 
* file format of the Java Virtual Machine specification. 
* <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$ClassFileVersion') @:internal extern class JDWP_ReferenceType_ClassFileVersion
{
	
}
/**
* Return the raw bytes of the constant pool in the format of the 
* constant_pool item of the Class File Format in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* <p>Since JDWP version 1.6. Requires canGetConstantPool capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
* 
*/
@:native('com$sun$tools$jdi$JDWP$ReferenceType$ConstantPool') @:internal extern class JDWP_ReferenceType_ConstantPool
{
	
}
@:native('com$sun$tools$jdi$JDWP$ClassType') @:internal extern class JDWP_ClassType
{
	
}
/**
* Returns the immediate superclass of a class.
*/
@:native('com$sun$tools$jdi$JDWP$ClassType$Superclass') @:internal extern class JDWP_ClassType_Superclass
{
	
}
/**
* Sets the value of one or more static fields. 
* Each field must be member of the class type 
* or one of its superclasses, superinterfaces, or implemented interfaces. 
* Access control is not enforced; for example, the values of private 
* fields can be set. Final fields cannot be set.
* For primitive values, the value's type must match the 
* field's type exactly. For object values, there must exist a 
* widening reference conversion from the value's type to the 
* field's type and the field's type must be loaded. 
*/
@:native('com$sun$tools$jdi$JDWP$ClassType$SetValues') @:internal extern class JDWP_ClassType_SetValues
{
	
}
/**
* A Field/Value pair.
*/
@:native('com$sun$tools$jdi$JDWP$ClassType$SetValues$FieldValue') @:internal extern class JDWP_ClassType_SetValues_FieldValue
{
	
}
/**
* Invokes a static method. 
* The method must be member of the class type 
* or one of its superclasses, superinterfaces, or implemented interfaces. 
* Access control is not enforced; for example, private 
* methods can be invoked.
* <p>
* The method invocation will occur in the specified thread. 
* Method invocation can occur only if the specified thread 
* has been suspended by an event. 
* Method invocation is not supported 
* when the target VM has been suspended by the front-end. 
* <p>
* The specified method is invoked with the arguments in the specified 
* argument list. 
* The method invocation is synchronous; the reply packet is not 
* sent until the invoked method returns in the target VM. 
* The return value (possibly the void value) is 
* included in the reply packet. 
* If the invoked method throws an exception, the 
* exception object ID is set in the reply packet; otherwise, the 
* exception object ID is null. 
* <p>
* For primitive arguments, the argument value's type must match the 
* argument's type exactly. For object arguments, there must exist a 
* widening reference conversion from the argument value's type to the 
* argument's type and the argument's type must be loaded. 
* <p>
* By default, all threads in the target VM are resumed while 
* the method is being invoked if they were previously 
* suspended by an event or by command. 
* This is done to prevent the deadlocks 
* that will occur if any of the threads own monitors 
* that will be needed by the invoked method. It is possible that 
* breakpoints or other events might occur during the invocation. 
* Note, however, that this implicit resume acts exactly like 
* the ThreadReference resume command, so if the thread's suspend 
* count is greater than 1, it will remain in a suspended state 
* during the invocation. By default, when the invocation completes, 
* all threads in the target VM are suspended, regardless their state 
* before the invocation. 
* <p>
* The resumption of other threads during the invoke can be prevented 
* by specifying the INVOKE_SINGLE_THREADED 
* bit flag in the <code>options</code> field; however, 
* there is no protection against or recovery from the deadlocks 
* described above, so this option should be used with great caution. 
* Only the specified thread will be resumed (as described for all 
* threads above). Upon completion of a single threaded invoke, the invoking thread 
* will be suspended once again. Note that any threads started during 
* the single threaded invocation will not be suspended when the 
* invocation completes. 
* <p>
* If the target VM is disconnected during the invoke (for example, through 
* the VirtualMachine dispose command) the method invocation continues. 
*/
@:native('com$sun$tools$jdi$JDWP$ClassType$InvokeMethod') @:internal extern class JDWP_ClassType_InvokeMethod
{
	
}
/**
* Creates a new object of this type, invoking the specified 
* constructor. The constructor method ID must be a member of 
* the class type.
* <p>
* Instance creation will occur in the specified thread. 
* Instance creation can occur only if the specified thread 
* has been suspended by an event. 
* Method invocation is not supported 
* when the target VM has been suspended by the front-end. 
* <p>
* The specified constructor is invoked with the arguments in the specified 
* argument list. 
* The constructor invocation is synchronous; the reply packet is not 
* sent until the invoked method returns in the target VM. 
* The return value (possibly the void value) is 
* included in the reply packet. 
* If the constructor throws an exception, the 
* exception object ID is set in the reply packet; otherwise, the 
* exception object ID is null. 
* <p>
* For primitive arguments, the argument value's type must match the 
* argument's type exactly. For object arguments, there must exist a 
* widening reference conversion from the argument value's type to the 
* argument's type and the argument's type must be loaded. 
* <p>
* By default, all threads in the target VM are resumed while 
* the method is being invoked if they were previously 
* suspended by an event or by command. 
* This is done to prevent the deadlocks 
* that will occur if any of the threads own monitors 
* that will be needed by the invoked method. It is possible that 
* breakpoints or other events might occur during the invocation. 
* Note, however, that this implicit resume acts exactly like 
* the ThreadReference resume command, so if the thread's suspend 
* count is greater than 1, it will remain in a suspended state 
* during the invocation. By default, when the invocation completes, 
* all threads in the target VM are suspended, regardless their state 
* before the invocation. 
* <p>
* The resumption of other threads during the invoke can be prevented 
* by specifying the INVOKE_SINGLE_THREADED 
* bit flag in the <code>options</code> field; however, 
* there is no protection against or recovery from the deadlocks 
* described above, so this option should be used with great caution. 
* Only the specified thread will be resumed (as described for all 
* threads above). Upon completion of a single threaded invoke, the invoking thread 
* will be suspended once again. Note that any threads started during 
* the single threaded invocation will not be suspended when the 
* invocation completes. 
* <p>
* If the target VM is disconnected during the invoke (for example, through 
* the VirtualMachine dispose command) the method invocation continues. 
*/
@:native('com$sun$tools$jdi$JDWP$ClassType$NewInstance') @:internal extern class JDWP_ClassType_NewInstance
{
	
}
@:native('com$sun$tools$jdi$JDWP$ArrayType') @:internal extern class JDWP_ArrayType
{
	
}
/**
* Creates a new array object of this type with a given length.
*/
@:native('com$sun$tools$jdi$JDWP$ArrayType$NewInstance') @:internal extern class JDWP_ArrayType_NewInstance
{
	
}
@:native('com$sun$tools$jdi$JDWP$InterfaceType') @:internal extern class JDWP_InterfaceType
{
	
}
@:native('com$sun$tools$jdi$JDWP$Method') @:internal extern class JDWP_Method
{
	
}
/**
* Returns line number information for the method, if present. 
* The line table maps source line numbers to the initial code index 
* of the line. The line table 
* is ordered by code index (from lowest to highest). The line number 
* information is constant unless a new class definition is installed 
* using <a href="#JDWP_VirtualMachine_RedefineClasses">RedefineClasses</a>.
*/
@:native('com$sun$tools$jdi$JDWP$Method$LineTable') @:internal extern class JDWP_Method_LineTable
{
	
}
@:native('com$sun$tools$jdi$JDWP$Method$LineTable$LineInfo') @:internal extern class JDWP_Method_LineTable_LineInfo
{
	
}
/**
* Returns variable information for the method. The variable table 
* includes arguments and locals declared within the method. For 
* instance methods, the "this" reference is included in the 
* table. Also, synthetic variables may be present. 
*/
@:native('com$sun$tools$jdi$JDWP$Method$VariableTable') @:internal extern class JDWP_Method_VariableTable
{
	
}
/**
* Information about the variable.
*/
@:native('com$sun$tools$jdi$JDWP$Method$VariableTable$SlotInfo') @:internal extern class JDWP_Method_VariableTable_SlotInfo
{
	
}
/**
* Retrieve the method's bytecodes as defined in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* Requires canGetBytecodes capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$Method$Bytecodes') @:internal extern class JDWP_Method_Bytecodes
{
	
}
/**
* Determine if this method is obsolete. A method is obsolete if it has been replaced 
* by a non-equivalent method using the 
* <a href="#JDWP_VirtualMachine_RedefineClasses">RedefineClasses</a> command. 
* The original and redefined methods are considered equivalent if their bytecodes are 
* the same except for indices into the constant pool and the referenced constants are 
* equal.
*/
@:native('com$sun$tools$jdi$JDWP$Method$IsObsolete') @:internal extern class JDWP_Method_IsObsolete
{
	
}
/**
* Returns variable information for the method, including 
* generic signatures for the variables. The variable table 
* includes arguments and locals declared within the method. For 
* instance methods, the "this" reference is included in the 
* table. Also, synthetic variables may be present. 
* Generic signatures are described in the signature attribute 
* section in 
* <cite>The Java&trade; Virtual Machine Specification</cite>. 
* Since JDWP version 1.5.
*/
@:native('com$sun$tools$jdi$JDWP$Method$VariableTableWithGeneric') @:internal extern class JDWP_Method_VariableTableWithGeneric
{
	
}
/**
* Information about the variable.
*/
@:native('com$sun$tools$jdi$JDWP$Method$VariableTableWithGeneric$SlotInfo') @:internal extern class JDWP_Method_VariableTableWithGeneric_SlotInfo
{
	
}
@:native('com$sun$tools$jdi$JDWP$Field') @:internal extern class JDWP_Field
{
	
}
@:native('com$sun$tools$jdi$JDWP$ObjectReference') @:internal extern class JDWP_ObjectReference
{
	
}
/**
* Returns the runtime type of the object. 
* The runtime type will be a class or an array. 
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$ReferenceType') @:internal extern class JDWP_ObjectReference_ReferenceType
{
	
}
/**
* Returns the value of one or more instance fields. 
* Each field must be member of the object's type 
* or one of its superclasses, superinterfaces, or implemented interfaces. 
* Access control is not enforced; for example, the values of private 
* fields can be obtained.
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$GetValues') @:internal extern class JDWP_ObjectReference_GetValues
{
	
}
@:native('com$sun$tools$jdi$JDWP$ObjectReference$GetValues$Field') @:internal extern class JDWP_ObjectReference_GetValues_Field
{
	
}
/**
* Sets the value of one or more instance fields. 
* Each field must be member of the object's type 
* or one of its superclasses, superinterfaces, or implemented interfaces. 
* Access control is not enforced; for example, the values of private 
* fields can be set. 
* For primitive values, the value's type must match the 
* field's type exactly. For object values, there must be a 
* widening reference conversion from the value's type to the 
* field's type and the field's type must be loaded. 
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$SetValues') @:internal extern class JDWP_ObjectReference_SetValues
{
	
}
/**
* A Field/Value pair.
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$SetValues$FieldValue') @:internal extern class JDWP_ObjectReference_SetValues_FieldValue
{
	
}
/**
* Returns monitor information for an object. All threads int the VM must 
* be suspended.
* Requires canGetMonitorInfo capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$MonitorInfo') @:internal extern class JDWP_ObjectReference_MonitorInfo
{
	
}
/**
* Invokes a instance method. 
* The method must be member of the object's type 
* or one of its superclasses, superinterfaces, or implemented interfaces. 
* Access control is not enforced; for example, private 
* methods can be invoked.
* <p>
* The method invocation will occur in the specified thread. 
* Method invocation can occur only if the specified thread 
* has been suspended by an event. 
* Method invocation is not supported 
* when the target VM has been suspended by the front-end. 
* <p>
* The specified method is invoked with the arguments in the specified 
* argument list. 
* The method invocation is synchronous; the reply packet is not 
* sent until the invoked method returns in the target VM. 
* The return value (possibly the void value) is 
* included in the reply packet. 
* If the invoked method throws an exception, the 
* exception object ID is set in the reply packet; otherwise, the 
* exception object ID is null. 
* <p>
* For primitive arguments, the argument value's type must match the 
* argument's type exactly. For object arguments, there must be a 
* widening reference conversion from the argument value's type to the 
* argument's type and the argument's type must be loaded. 
* <p>
* By default, all threads in the target VM are resumed while 
* the method is being invoked if they were previously 
* suspended by an event or by command. 
* This is done to prevent the deadlocks 
* that will occur if any of the threads own monitors 
* that will be needed by the invoked method. It is possible that 
* breakpoints or other events might occur during the invocation. 
* Note, however, that this implicit resume acts exactly like 
* the ThreadReference resume command, so if the thread's suspend 
* count is greater than 1, it will remain in a suspended state 
* during the invocation. By default, when the invocation completes, 
* all threads in the target VM are suspended, regardless their state 
* before the invocation. 
* <p>
* The resumption of other threads during the invoke can be prevented 
* by specifying the INVOKE_SINGLE_THREADED 
* bit flag in the <code>options</code> field; however, 
* there is no protection against or recovery from the deadlocks 
* described above, so this option should be used with great caution. 
* Only the specified thread will be resumed (as described for all 
* threads above). Upon completion of a single threaded invoke, the invoking thread 
* will be suspended once again. Note that any threads started during 
* the single threaded invocation will not be suspended when the 
* invocation completes. 
* <p>
* If the target VM is disconnected during the invoke (for example, through 
* the VirtualMachine dispose command) the method invocation continues. 
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$InvokeMethod') @:internal extern class JDWP_ObjectReference_InvokeMethod
{
	
}
/**
* Prevents garbage collection for the given object. By 
* default all objects in back-end replies may be 
* collected at any time the target VM is running. A call to 
* this command guarantees that the object will not be 
* collected. The 
* <a href="#JDWP_ObjectReference_EnableCollection">EnableCollection</a> 
* command can be used to 
* allow collection once again. 
* <p>
* Note that while the target VM is suspended, no garbage 
* collection will occur because all threads are suspended. 
* The typical examination of variables, fields, and arrays 
* during the suspension is safe without explicitly disabling 
* garbage collection. 
* <p>
* This method should be used sparingly, as it alters the 
* pattern of garbage collection in the target VM and, 
* consequently, may result in application behavior under the 
* debugger that differs from its non-debugged behavior. 
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$DisableCollection') @:internal extern class JDWP_ObjectReference_DisableCollection
{
	
}
/**
* Permits garbage collection for this object. By default all 
* objects returned by JDWP may become unreachable in the target VM, 
* and hence may be garbage collected. A call to this command is 
* necessary only if garbage collection was previously disabled with 
* the <a href="#JDWP_ObjectReference_DisableCollection">DisableCollection</a> 
* command.
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$EnableCollection') @:internal extern class JDWP_ObjectReference_EnableCollection
{
	
}
/**
* Determines whether an object has been garbage collected in the 
* target VM. 
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$IsCollected') @:internal extern class JDWP_ObjectReference_IsCollected
{
	
}
/**
* Returns objects that directly reference this object.  
* Only objects that are reachable for the purposes 
* of garbage collection are returned. 
* Note that an object can also be referenced in other ways, 
* such as from a local variable in a stack frame, or from a JNI global 
* reference.  Such non-object referrers are not returned by this command. 
* <p>Since JDWP version 1.6. Requires canGetInstanceInfo capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ObjectReference$ReferringObjects') @:internal extern class JDWP_ObjectReference_ReferringObjects
{
	
}
@:native('com$sun$tools$jdi$JDWP$StringReference') @:internal extern class JDWP_StringReference
{
	
}
/**
* Returns the characters contained in the string. 
*/
@:native('com$sun$tools$jdi$JDWP$StringReference$Value') @:internal extern class JDWP_StringReference_Value
{
	
}
@:native('com$sun$tools$jdi$JDWP$ThreadReference') @:internal extern class JDWP_ThreadReference
{
	
}
/**
* Returns the thread name. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Name') @:internal extern class JDWP_ThreadReference_Name
{
	
}
/**
* Suspends the thread. 
* <p>
* Unlike java.lang.Thread.suspend(), suspends of both 
* the virtual machine and individual threads are counted. Before 
* a thread will run again, it must be resumed the same number 
* of times it has been suspended. 
* <p>
* Suspending single threads with command has the same 
* dangers java.lang.Thread.suspend(). If the suspended 
* thread holds a monitor needed by another running thread, 
* deadlock is possible in the target VM (at least until the 
* suspended thread is resumed again). 
* <p>
* The suspended thread is guaranteed to remain suspended until 
* resumed through one of the JDI resume methods mentioned above; 
* the application in the target VM cannot resume the suspended thread 
* through {@link java.lang.Thread#resume}. 
* <p>
* Note that this doesn't change the status of the thread (see the 
* <a href="#JDWP_ThreadReference_Status">ThreadStatus</a> command.) 
* For example, if it was 
* Running, it will still appear running to other threads. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Suspend') @:internal extern class JDWP_ThreadReference_Suspend
{
	
}
/**
* Resumes the execution of a given thread. If this thread was 
* not previously suspended by the front-end, 
* calling this command has no effect. 
* Otherwise, the count of pending suspends on this thread is 
* decremented. If it is decremented to 0, the thread will 
* continue to execute. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Resume') @:internal extern class JDWP_ThreadReference_Resume
{
	
}
/**
* Returns the current status of a thread. The thread status 
* reply indicates the thread status the last time it was running. 
* the suspend status provides information on the thread's 
* suspension, if any.
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Status') @:internal extern class JDWP_ThreadReference_Status
{
	
}
/**
* Returns the thread group that contains a given thread. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$ThreadGroup') @:internal extern class JDWP_ThreadReference_ThreadGroup
{
	
}
/**
* Returns the current call stack of a suspended thread. 
* The sequence of frames starts with 
* the currently executing frame, followed by its caller, 
* and so on. The thread must be suspended, and the returned 
* frameID is valid only while the thread is suspended. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Frames') @:internal extern class JDWP_ThreadReference_Frames
{
	
}
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Frames$Frame') @:internal extern class JDWP_ThreadReference_Frames_Frame
{
	
}
/**
* Returns the count of frames on this thread's stack. 
* The thread must be suspended, and the returned 
* count is valid only while the thread is suspended. 
* Returns JDWP.Error.errorThreadNotSuspended if not suspended. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$FrameCount') @:internal extern class JDWP_ThreadReference_FrameCount
{
	
}
/**
* Returns the objects whose monitors have been entered by this thread. 
* The thread must be suspended, and the returned information is 
* relevant only while the thread is suspended. 
* Requires canGetOwnedMonitorInfo capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$OwnedMonitors') @:internal extern class JDWP_ThreadReference_OwnedMonitors
{
	
}
/**
* Returns the object, if any, for which this thread is waiting. The 
* thread may be waiting to enter a monitor, or it may be waiting, via 
* the java.lang.Object.wait method, for another thread to invoke the 
* notify method. 
* The thread must be suspended, and the returned information is 
* relevant only while the thread is suspended. 
* Requires canGetCurrentContendedMonitor capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$CurrentContendedMonitor') @:internal extern class JDWP_ThreadReference_CurrentContendedMonitor
{
	
}
/**
* Stops the thread with an asynchronous exception, as if done by 
* java.lang.Thread.stop 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Stop') @:internal extern class JDWP_ThreadReference_Stop
{
	
}
/**
* Interrupt the thread, as if done by java.lang.Thread.interrupt 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$Interrupt') @:internal extern class JDWP_ThreadReference_Interrupt
{
	
}
/**
* Get the suspend count for this thread. The suspend count is the  
* number of times the thread has been suspended through the 
* thread-level or VM-level suspend commands without a corresponding resume 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$SuspendCount') @:internal extern class JDWP_ThreadReference_SuspendCount
{
	
}
/**
* Returns monitor objects owned by the thread, along with stack depth at which 
* the monitor was acquired. Returns stack depth of -1  if 
* the implementation cannot determine the stack depth 
* (e.g., for monitors acquired by JNI MonitorEnter).
* The thread must be suspended, and the returned information is 
* relevant only while the thread is suspended. 
* Requires canGetMonitorFrameInfo capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>. 
* <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$OwnedMonitorsStackDepthInfo') @:internal extern class JDWP_ThreadReference_OwnedMonitorsStackDepthInfo
{
	
}
@:native('com$sun$tools$jdi$JDWP$ThreadReference$OwnedMonitorsStackDepthInfo$monitor') @:internal extern class JDWP_ThreadReference_OwnedMonitorsStackDepthInfo_monitor
{
	
}
/**
* Force a method to return before it reaches a return 
* statement.  
* <p>
* The method which will return early is referred to as the 
* called method. The called method is the current method (as 
* defined by the Frames section in 
* <cite>The Java&trade; Virtual Machine Specification</cite>) 
* for the specified thread at the time this command 
* is received. 
* <p>
* The specified thread must be suspended. 
* The return occurs when execution of Java programming 
* language code is resumed on this thread. Between sending this 
* command and resumption of thread execution, the 
* state of the stack is undefined. 
* <p>
* No further instructions are executed in the called 
* method. Specifically, finally blocks are not executed. Note: 
* this can cause inconsistent states in the application. 
* <p>
* A lock acquired by calling the called method (if it is a 
* synchronized method) and locks acquired by entering 
* synchronized blocks within the called method are 
* released. Note: this does not apply to JNI locks or 
* java.util.concurrent.locks locks. 
* <p>
* Events, such as MethodExit, are generated as they would be in 
* a normal return. 
* <p>
* The called method must be a non-native Java programming 
* language method. Forcing return on a thread with only one 
* frame on the stack causes the thread to exit when resumed. 
* <p>
* For void methods, the value must be a void value. 
* For methods that return primitive values, the value's type must 
* match the return type exactly.  For object values, there must be a 
* widening reference conversion from the value's type to the 
* return type type and the return type must be loaded. 
* <p>
* Since JDWP version 1.6. Requires canForceEarlyReturn capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$ThreadReference$ForceEarlyReturn') @:internal extern class JDWP_ThreadReference_ForceEarlyReturn
{
	
}
@:native('com$sun$tools$jdi$JDWP$ThreadGroupReference') @:internal extern class JDWP_ThreadGroupReference
{
	
}
/**
* Returns the thread group name. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadGroupReference$Name') @:internal extern class JDWP_ThreadGroupReference_Name
{
	
}
/**
* Returns the thread group, if any, which contains a given thread group. 
*/
@:native('com$sun$tools$jdi$JDWP$ThreadGroupReference$Parent') @:internal extern class JDWP_ThreadGroupReference_Parent
{
	
}
/**
* Returns the live threads and active thread groups directly contained 
* in this thread group. Threads and thread groups in child 
* thread groups are not included. 
* A thread is alive if it has been started and has not yet been stopped. 
* See <a href=../../../api/java/lang/ThreadGroup.html>java.lang.ThreadGroup </a>
* for information about active ThreadGroups.
*/
@:native('com$sun$tools$jdi$JDWP$ThreadGroupReference$Children') @:internal extern class JDWP_ThreadGroupReference_Children
{
	
}
@:native('com$sun$tools$jdi$JDWP$ArrayReference') @:internal extern class JDWP_ArrayReference
{
	
}
/**
* Returns the number of components in a given array. 
*/
@:native('com$sun$tools$jdi$JDWP$ArrayReference$Length') @:internal extern class JDWP_ArrayReference_Length
{
	
}
/**
* Returns a range of array components. The specified range must 
* be within the bounds of the array. 
*/
@:native('com$sun$tools$jdi$JDWP$ArrayReference$GetValues') @:internal extern class JDWP_ArrayReference_GetValues
{
	
}
/**
* Sets a range of array components. The specified range must 
* be within the bounds of the array. 
* For primitive values, each value's type must match the 
* array component type exactly. For object values, there must be a 
* widening reference conversion from the value's type to the 
* array component type and the array component type must be loaded. 
*/
@:native('com$sun$tools$jdi$JDWP$ArrayReference$SetValues') @:internal extern class JDWP_ArrayReference_SetValues
{
	
}
@:native('com$sun$tools$jdi$JDWP$ClassLoaderReference') @:internal extern class JDWP_ClassLoaderReference
{
	
}
/**
* Returns a list of all classes which this class loader has 
* been requested to load. This class loader is considered to be 
* an <i>initiating</i> class loader for each class in the returned 
* list. The list contains each 
* reference type defined by this loader and any types for which 
* loading was delegated by this class loader to another class loader. 
* <p>
* The visible class list has useful properties with respect to 
* the type namespace. A particular type name will occur at most 
* once in the list. Each field or variable declared with that 
* type name in a class defined by 
* this class loader must be resolved to that single type. 
* <p>
* No ordering of the returned list is guaranteed. 
*/
@:native('com$sun$tools$jdi$JDWP$ClassLoaderReference$VisibleClasses') @:internal extern class JDWP_ClassLoaderReference_VisibleClasses
{
	
}
@:native('com$sun$tools$jdi$JDWP$ClassLoaderReference$VisibleClasses$ClassInfo') @:internal extern class JDWP_ClassLoaderReference_VisibleClasses_ClassInfo
{
	
}
@:native('com$sun$tools$jdi$JDWP$EventRequest') @:internal extern class JDWP_EventRequest
{
	
}
/**
* Set an event request. When the event described by this request 
* occurs, an <a href="#JDWP_Event">event</a> is sent from the 
* target VM. If an event occurs that has not been requested then it is not sent 
* from the target VM. The two exceptions to this are the VM Start Event and 
* the VM Death Event which are automatically generated events - see 
* <a href="#JDWP_Event_Composite">Composite Command</a> for further details.
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set') @:internal extern class JDWP_EventRequest_Set
{
	
}
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier') @:internal extern class JDWP_EventRequest_Set_Modifier
{
	
}
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$ModifierCommon') @:internal extern class JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Limit the requested event to be reported at most once after a 
* given number of occurrences.  The event is not reported 
* the first <code>count - 1</code> times this filter is reached. 
* To request a one-off event, call this method with a count of 1. 
* <p>
* Once the count reaches 0, any subsequent filters in this request 
* are applied. If none of those filters cause the event to be 
* suppressed, the event is reported. Otherwise, the event is not 
* reported. In either case subsequent events are never reported for 
* this request. 
* This modifier can be used with any event kind.
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$Count') @:internal extern class JDWP_EventRequest_Set_Modifier_Count extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Conditional on expression
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$Conditional') @:internal extern class JDWP_EventRequest_Set_Modifier_Conditional extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported events to 
* those in the given thread. 
* This modifier can be used with any event kind 
* except for class unload. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$ThreadOnly') @:internal extern class JDWP_EventRequest_Set_Modifier_ThreadOnly extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* For class prepare events, restricts the events 
* generated by this request to be the 
* preparation of the given reference type and any subtypes. 
* For monitor wait and waited events, restricts the events 
* generated by this request to those whose monitor object 
* is of the given reference type or any of its subtypes. 
* For other events, restricts the events generated 
* by this request to those 
* whose location is in the given reference type or any of its subtypes. 
* An event will be generated for any location in a reference type that can 
* be safely cast to the given reference type. 
* This modifier can be used with any event kind except 
* class unload, thread start, and thread end. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$ClassOnly') @:internal extern class JDWP_EventRequest_Set_Modifier_ClassOnly extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported events to those for classes whose name 
* matches the given restricted regular expression. 
* For class prepare events, the prepared class name 
* is matched. For class unload events, the 
* unloaded class name is matched. For monitor wait 
* and waited events, the name of the class of the 
* monitor object is matched. For other events, 
* the class name of the event's location is matched. 
* This modifier can be used with any event kind except 
* thread start and thread end. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$ClassMatch') @:internal extern class JDWP_EventRequest_Set_Modifier_ClassMatch extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported events to those for classes whose name 
* does not match the given restricted regular expression. 
* For class prepare events, the prepared class name 
* is matched. For class unload events, the 
* unloaded class name is matched. For monitor wait and 
* waited events, the name of the class of the monitor 
* object is matched. For other events, 
* the class name of the event's location is matched. 
* This modifier can be used with any event kind except 
* thread start and thread end. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$ClassExclude') @:internal extern class JDWP_EventRequest_Set_Modifier_ClassExclude extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported events to those that occur at 
* the given location. 
* This modifier can be used with 
* breakpoint, field access, field modification, 
* step, and exception event kinds. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$LocationOnly') @:internal extern class JDWP_EventRequest_Set_Modifier_LocationOnly extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported exceptions by their class and 
* whether they are caught or uncaught. 
* This modifier can be used with 
* exception event kinds only. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$ExceptionOnly') @:internal extern class JDWP_EventRequest_Set_Modifier_ExceptionOnly extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported events to those that occur for 
* a given field. 
* This modifier can be used with 
* field access and field modification event kinds only. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$FieldOnly') @:internal extern class JDWP_EventRequest_Set_Modifier_FieldOnly extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported step events 
* to those which satisfy 
* depth and size constraints. 
* This modifier can be used with 
* step event kinds only. 
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$Step') @:internal extern class JDWP_EventRequest_Set_Modifier_Step extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported events to those whose 
* active 'this' object is the given object. 
* Match value is the null object for static methods. 
* This modifier can be used with any event kind 
* except class prepare, class unload, thread start, 
* and thread end. Introduced in JDWP version 1.4.
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$InstanceOnly') @:internal extern class JDWP_EventRequest_Set_Modifier_InstanceOnly extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Restricts reported class prepare events to those 
* for reference types which have a source name 
* which matches the given restricted regular expression. 
* The source names are determined by the reference type's 
* <a href="#JDWP_ReferenceType_SourceDebugExtension"> 
* SourceDebugExtension</a>. 
* This modifier can only be used with class prepare 
* events. 
* Since JDWP version 1.6. Requires the canUseSourceNameFilters 
* capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Set$Modifier$SourceNameMatch') @:internal extern class JDWP_EventRequest_Set_Modifier_SourceNameMatch extends com.sun.tools.jdi.JDWP.JDWP_EventRequest_Set_Modifier_ModifierCommon
{
	
}
/**
* Clear an event request. See <a href="#JDWP_EventKind">JDWP.EventKind</a> 
* for a complete list of events that can be cleared. Only the event request matching 
* the specified event kind and requestID is cleared. If there isn't a matching event 
* request the command is a no-op and does not result in an error. Automatically 
* generated events do not have a corresponding event request and may not be cleared 
* using this command.
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$Clear') @:internal extern class JDWP_EventRequest_Clear
{
	
}
/**
* Removes all set breakpoints, a no-op if there are no breakpoints set.
*/
@:native('com$sun$tools$jdi$JDWP$EventRequest$ClearAllBreakpoints') @:internal extern class JDWP_EventRequest_ClearAllBreakpoints
{
	
}
@:native('com$sun$tools$jdi$JDWP$StackFrame') @:internal extern class JDWP_StackFrame
{
	
}
/**
* Returns the value of one or more local variables in a 
* given frame. Each variable must be visible at the frame's code index. 
* Even if local variable information is not available, values can 
* be retrieved if the front-end is able to 
* determine the correct local variable index. (Typically, this 
* index can be determined for method arguments from the method 
* signature without access to the local variable table information.) 
*/
@:native('com$sun$tools$jdi$JDWP$StackFrame$GetValues') @:internal extern class JDWP_StackFrame_GetValues
{
	
}
@:native('com$sun$tools$jdi$JDWP$StackFrame$GetValues$SlotInfo') @:internal extern class JDWP_StackFrame_GetValues_SlotInfo
{
	
}
/**
* Sets the value of one or more local variables. 
* Each variable must be visible at the current frame code index. 
* For primitive values, the value's type must match the 
* variable's type exactly. For object values, there must be a 
* widening reference conversion from the value's type to the 
* variable's type and the variable's type must be loaded. 
* <p>
* Even if local variable information is not available, values can 
* be set, if the front-end is able to 
* determine the correct local variable index. (Typically, this 
* index can be determined for method arguments from the method 
* signature without access to the local variable table information.) 
*/
@:native('com$sun$tools$jdi$JDWP$StackFrame$SetValues') @:internal extern class JDWP_StackFrame_SetValues
{
	
}
@:native('com$sun$tools$jdi$JDWP$StackFrame$SetValues$SlotInfo') @:internal extern class JDWP_StackFrame_SetValues_SlotInfo
{
	
}
/**
* Returns the value of the 'this' reference for this frame. 
* If the frame's method is static or native, the reply 
* will contain the null object reference. 
*/
@:native('com$sun$tools$jdi$JDWP$StackFrame$ThisObject') @:internal extern class JDWP_StackFrame_ThisObject
{
	
}
/**
* Pop the top-most stack frames of the thread stack, up to, and including 'frame'. 
* The thread must be suspended to perform this command. 
* The top-most stack frames are discarded and the stack frame previous to 'frame' 
* becomes the current frame. The operand stack is restored -- the argument values 
* are added back and if the invoke was not <code>invokestatic</code>, 
* <code>objectref</code> is added back as well. The Java virtual machine 
* program counter is restored to the opcode of the invoke instruction.
* <p>
* Since JDWP version 1.4. Requires canPopFrames capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$StackFrame$PopFrames') @:internal extern class JDWP_StackFrame_PopFrames
{
	
}
@:native('com$sun$tools$jdi$JDWP$ClassObjectReference') @:internal extern class JDWP_ClassObjectReference
{
	
}
/**
* Returns the reference type reflected by this class object.
*/
@:native('com$sun$tools$jdi$JDWP$ClassObjectReference$ReflectedType') @:internal extern class JDWP_ClassObjectReference_ReflectedType
{
	
}
@:native('com$sun$tools$jdi$JDWP$Event') @:internal extern class JDWP_Event
{
	
}
/**
* Several events may occur at a given time in the target VM. 
* For example, there may be more than one breakpoint request 
* for a given location 
* or you might single step to the same location as a 
* breakpoint request.  These events are delivered 
* together as a composite event.  For uniformity, a 
* composite event is always used 
* to deliver events, even if there is only one event to report. 
* <P>
* The events that are grouped in a composite event are restricted in the 
* following ways: 
* <P>
* <UL>
* <LI>Only with other thread start events for the same thread:
*     <UL>
*     <LI>Thread Start Event
*     </UL>
* <LI>Only with other thread death events for the same thread:
*     <UL>
*     <LI>Thread Death Event
*     </UL>
* <LI>Only with other class prepare events for the same class:
*     <UL>
*     <LI>Class Prepare Event
*     </UL>
* <LI>Only with other class unload events for the same class:
*     <UL>
*     <LI>Class Unload Event
*     </UL>
* <LI>Only with other access watchpoint events for the same field access:
*     <UL>
*     <LI>Access Watchpoint Event
*     </UL>
* <LI>Only with other modification watchpoint events for the same field 
* modification:
*     <UL>
*     <LI>Modification Watchpoint Event
*     </UL>
* <LI>Only with other Monitor contended enter events for the same monitor object: 
*     <UL>
*     <LI>Monitor Contended Enter Event
*     </UL>
* <LI>Only with other Monitor contended entered events for the same monitor object: 
*     <UL>
*     <LI>Monitor Contended Entered Event
*     </UL>
* <LI>Only with other Monitor wait events for the same monitor object: 
*     <UL>
*     <LI>Monitor Wait Event
*     </UL>
* <LI>Only with other Monitor waited events for the same monitor object: 
*     <UL>
*     <LI>Monitor Waited Event
*     </UL>
* <LI>Only with other ExceptionEvents for the same exception occurrance:
*     <UL>
*     <LI>ExceptionEvent
*     </UL>
* <LI>Only with other members of this group, at the same location 
* and in the same thread: 
*     <UL>
*     <LI>Breakpoint Event
*     <LI>Step Event
*     <LI>Method Entry Event
*     <LI>Method Exit Event
*     </UL>
* </UL>
* <P>
* The VM Start Event and VM Death Event are automatically generated events. 
* This means they do not need to be requested using the 
* <a href="#JDWP_EventRequest_Set">EventRequest.Set</a> command. 
* The VM Start event signals the completion of VM initialization. The VM Death 
* event signals the termination of the VM.
* If there is a debugger connected at the time when an automatically generated 
* event occurs it is sent from the target VM. Automatically generated events may 
* also be requested using the EventRequest.Set command and thus multiple events 
* of the same event kind will be sent from the target VM when an event occurs.
* Automatically generated events are sent with the requestID field 
* in the Event Data set to 0. The value of the suspendPolicy field in the 
* Event Data depends on the event. For the automatically generated VM Start 
* Event the value of suspendPolicy is not defined and is therefore implementation 
* or configuration specific. In the Sun implementation, for example, the 
* suspendPolicy is specified as an option to the JDWP agent at launch-time.
* The automatically generated VM Death Event will have the suspendPolicy set to 
* NONE.
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite') @:internal extern class JDWP_Event_Composite
{
	
}
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events') @:internal extern class JDWP_Event_Composite_Events
{
	
}
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$EventsCommon') @:internal extern class JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of initialization of a target VM.  This event is 
* received before the main thread is started and before any 
* application code has been executed. Before this event occurs 
* a significant amount of system code has executed and a number 
* of system classes have been loaded. 
* This event is always generated by the target VM, even 
* if not explicitly requested.
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$VMStart') @:internal extern class JDWP_Event_Composite_Events_VMStart extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of step completion in the target VM. The step event 
* is generated before the code at its location is executed. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$SingleStep') @:internal extern class JDWP_Event_Composite_Events_SingleStep extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a breakpoint in the target VM. The breakpoint event 
* is generated before the code at its location is executed. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$Breakpoint') @:internal extern class JDWP_Event_Composite_Events_Breakpoint extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a method invocation in the target VM. This event 
* is generated before any code in the invoked method has executed. 
* Method entry events are generated for both native and non-native 
* methods. 
* <P>
* In some VMs method entry events can occur for a particular thread 
* before its thread start event occurs if methods are called 
* as part of the thread's initialization. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MethodEntry') @:internal extern class JDWP_Event_Composite_Events_MethodEntry extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a method return in the target VM. This event 
* is generated after all code in the method has executed, but the 
* location of this event is the last executed location in the method. 
* Method exit events are generated for both native and non-native 
* methods. Method exit events are not generated if the method terminates 
* with a thrown exception. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MethodExit') @:internal extern class JDWP_Event_Composite_Events_MethodExit extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a method return in the target VM. This event 
* is generated after all code in the method has executed, but the 
* location of this event is the last executed location in the method. 
* Method exit events are generated for both native and non-native 
* methods. Method exit events are not generated if the method terminates 
* with a thrown exception. <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MethodExitWithReturnValue') @:internal extern class JDWP_Event_Composite_Events_MethodExitWithReturnValue extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification that a thread in the target VM is attempting 
* to enter a monitor that is already acquired by another thread. 
* Requires canRequestMonitorEvents capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>. 
* <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MonitorContendedEnter') @:internal extern class JDWP_Event_Composite_Events_MonitorContendedEnter extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a thread in the target VM is entering a monitor 
* after waiting for it to be released by another thread. 
* Requires canRequestMonitorEvents capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>. 
* <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MonitorContendedEntered') @:internal extern class JDWP_Event_Composite_Events_MonitorContendedEntered extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a thread about to wait on a monitor object. 
* Requires canRequestMonitorEvents capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>. 
* <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MonitorWait') @:internal extern class JDWP_Event_Composite_Events_MonitorWait extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification that a thread in the target VM has finished waiting on 
* Requires canRequestMonitorEvents capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>. 
* a monitor object. 
* <p>Since JDWP version 1.6. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$MonitorWaited') @:internal extern class JDWP_Event_Composite_Events_MonitorWaited extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of an exception in the target VM. 
* If the exception is thrown from a non-native method, 
* the exception event is generated at the location where the 
* exception is thrown. 
* If the exception is thrown from a native method, the exception event 
* is generated at the first non-native location reached after the exception 
* is thrown. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$Exception') @:internal extern class JDWP_Event_Composite_Events_Exception extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a new running thread in the target VM. 
* The new thread can be the result of a call to 
* <code>java.lang.Thread.start</code> or the result of 
* attaching a new thread to the VM though JNI. The 
* notification is generated by the new thread some time before 
* its execution starts. 
* Because of this timing, it is possible to receive other events 
* for the thread before this event is received. (Notably, 
* Method Entry Events and Method Exit Events might occur 
* during thread initialization. 
* It is also possible for the 
* <a href="#JDWP_VirtualMachine_AllThreads">VirtualMachine AllThreads</a> 
* command to return 
* a thread before its thread start event is received. 
* <p>
* Note that this event gives no information 
* about the creation of the thread object which may have happened 
* much earlier, depending on the VM being debugged. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$ThreadStart') @:internal extern class JDWP_Event_Composite_Events_ThreadStart extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a completed thread in the target VM. The 
* notification is generated by the dying thread before it terminates. 
* Because of this timing, it is possible 
* for {@link VirtualMachine#allThreads} to return this thread 
* after this event is received. 
* <p>
* Note that this event gives no information 
* about the lifetime of the thread object. It may or may not be collected 
* soon depending on what references exist in the target VM. 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$ThreadDeath') @:internal extern class JDWP_Event_Composite_Events_ThreadDeath extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a class prepare in the target VM. See the JVM 
* specification for a definition of class preparation. Class prepare 
* events are not generated for primtiive classes (for example, 
* java.lang.Integer.TYPE). 
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$ClassPrepare') @:internal extern class JDWP_Event_Composite_Events_ClassPrepare extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a class unload in the target VM. 
* <p>
* There are severe constraints on the debugger back-end during 
* garbage collection, so unload information is greatly limited.	
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$ClassUnload') @:internal extern class JDWP_Event_Composite_Events_ClassUnload extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a field access in the target VM. 
* Field modifications 
* are not considered field accesses. 
* Requires canWatchFieldAccess capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$FieldAccess') @:internal extern class JDWP_Event_Composite_Events_FieldAccess extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
/**
* Notification of a field modification in the target VM. 
* Requires canWatchFieldModification capability - see 
* <a href="#JDWP_VirtualMachine_CapabilitiesNew">CapabilitiesNew</a>.
*/
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$FieldModification') @:internal extern class JDWP_Event_Composite_Events_FieldModification extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
@:native('com$sun$tools$jdi$JDWP$Event$Composite$Events$VMDeath') @:internal extern class JDWP_Event_Composite_Events_VMDeath extends com.sun.tools.jdi.JDWP.JDWP_Event_Composite_Events_EventsCommon
{
	
}
@:native('com$sun$tools$jdi$JDWP$Error') @:internal extern class JDWP_Error
{
	
}
@:native('com$sun$tools$jdi$JDWP$EventKind') @:internal extern class JDWP_EventKind
{
	
}
@:native('com$sun$tools$jdi$JDWP$ThreadStatus') @:internal extern class JDWP_ThreadStatus
{
	
}
@:native('com$sun$tools$jdi$JDWP$SuspendStatus') @:internal extern class JDWP_SuspendStatus
{
	
}
@:native('com$sun$tools$jdi$JDWP$ClassStatus') @:internal extern class JDWP_ClassStatus
{
	
}
@:native('com$sun$tools$jdi$JDWP$TypeTag') @:internal extern class JDWP_TypeTag
{
	
}
@:native('com$sun$tools$jdi$JDWP$Tag') @:internal extern class JDWP_Tag
{
	
}
@:native('com$sun$tools$jdi$JDWP$StepDepth') @:internal extern class JDWP_StepDepth
{
	
}
@:native('com$sun$tools$jdi$JDWP$StepSize') @:internal extern class JDWP_StepSize
{
	
}
@:native('com$sun$tools$jdi$JDWP$SuspendPolicy') @:internal extern class JDWP_SuspendPolicy
{
	
}
/**
* The invoke options are a combination of zero or more of the following bit flags:
*/
@:native('com$sun$tools$jdi$JDWP$InvokeOptions') @:internal extern class JDWP_InvokeOptions
{
	
}

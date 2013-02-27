package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class CompoundType extends sun.rmi.rmic.iiop.Type
{
	/**
	* A CompoundType is an abstract base class for all IIOP class and
	* interface types.
	*
	* @author      Bryan Atsatt
	*/
	private var methods : java.NativeArray<CompoundType_Method>;
	
	private var interfaces : java.NativeArray<sun.rmi.rmic.iiop.InterfaceType>;
	
	private var members : java.NativeArray<CompoundType_Member>;
	
	private var classDef : sun.tools.java.ClassDefinition;
	
	private var classDecl : sun.tools.java.ClassDeclaration;
	
	private var idlExceptionName : String;
	
	private var qualifiedIDLExceptionName : String;
	
	/**
	* Return true if this type implements
	* org.omg.CORBA.Object.
	*/
	@:overload public function isCORBAObject() : Bool;
	
	/**
	* Return true if this type implements
	* org.omg.CORBA.portable.IDLEntity.
	*/
	@:overload public function isIDLEntity() : Bool;
	
	/**
	* Return true if this type implements
	* org.omg.CORBA.portable.ValueBase.
	*/
	@:overload public function isValueBase() : Bool;
	
	/**
	* Return true if this type is a CORBA
	* abstract interface.
	*/
	@:overload public function isAbstractBase() : Bool;
	
	/**
	* Return true if this type is an exception.
	*/
	@:overload public function isException() : Bool;
	
	/**
	* Return true if this type is a "checked" exception.
	* Result if valid iff isException() returns true.
	*/
	@:overload public function isCheckedException() : Bool;
	
	/**
	* Return true if this type is a java.rmi.RemoteException
	* or one of its subclasses. Result if valid iff isException()
	* returns true.
	*/
	@:overload public function isRemoteExceptionOrSubclass() : Bool;
	
	/**
	* Return true if this type is exactly
	* org.omg.CORBA.UserException.
	*/
	@:overload public function isCORBAUserException() : Bool;
	
	/**
	* Return true if this type implements
	* isIDLEntity() && isException().
	*/
	@:overload public function isIDLEntityException() : Bool;
	
	/**
	* Return true if isIDLEntity() && !isValueBase()
	* && !isAbstractBase() && !isCORBAObject()
	* && !isIDLEntityException().
	*/
	@:overload public function isBoxed() : Bool;
	
	/**
	* If this type represents an exception, return the
	* IDL name including the "Ex" mangling, otherwise
	* return null.
	*/
	@:overload public function getIDLExceptionName() : String;
	
	/**
	* If this type represents an exception, return the
	* qualified IDL name including the "Ex" mangling,
	* otherwise return null.
	* @param global If true, prepends "::".
	*/
	@:overload public function getQualifiedIDLExceptionName(global : Bool) : String;
	
	/**
	* Return signature for this type  (e.g. com.acme.Dynamite
	* would return "com.acme.Dynamite", byte = "B")
	*/
	@:overload override public function getSignature() : String;
	
	/**
	* Return the ClassDeclaration for this type.
	*/
	@:overload public function getClassDeclaration() : sun.tools.java.ClassDeclaration;
	
	/**
	* Return the ClassDefinition for this type.
	*/
	@:overload public function getClassDefinition() : sun.tools.java.ClassDefinition;
	
	/**
	* Return the parent class of this type. Returns null if this
	* type is an interface or if there is no parent.
	*/
	@:overload public function getSuperclass() : sun.rmi.rmic.iiop.ClassType;
	
	/**
	* Return an array of interfaces directly implemented by this type.
	* <p>
	* The order of the array returned is arbitrary.
	*/
	@:overload public function getInterfaces() : java.NativeArray<sun.rmi.rmic.iiop.InterfaceType>;
	
	/**
	* Return an array of Type.Method objects representing all
	* of the methods implemented directly by this type.
	*/
	@:overload public function getMethods() : java.NativeArray<CompoundType_Method>;
	
	/**
	* Return an array of Type.Member objects representing all of
	* the data members directly implemented by this interface.
	*/
	@:overload public function getMembers() : java.NativeArray<CompoundType_Member>;
	
	/**
	* Create a CompoundType object for the given class.
	*
	* If the class is not a properly formed or if some other error occurs, the
	* return value will be null, and errors will have been reported to the
	* supplied BatchEnvironment.
	*/
	@:overload public static function forCompound(classDef : sun.tools.java.ClassDefinition, stack : sun.rmi.rmic.iiop.ContextStack) : CompoundType;
	
	/**
	* Release all resources.
	*/
	@:overload override private function destroy() : Void;
	
	/*
	* Load a Class instance. Return null if fail.
	*/
	@:overload override private function loadClass() : Class<Dynamic>;
	
	@:overload private function printExtends(writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Bool;
	
	@:overload private function printImplements(writer : sun.rmi.rmic.IndentingWriter, prefix : String, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	@:overload private function printMembers(writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	@:overload private function printMethods(writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	@:overload private function printMethod(it : CompoundType_Method, writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	/**
	* Create a CompoundType instance for the given class. NOTE: This constructor
	* is ONLY for SpecialClassType and SpecialInterfaceType.
	*/
	@:overload private function new(stack : sun.rmi.rmic.iiop.ContextStack, typeCode : Int, classDef : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Create a CompoundType instance for the given class.  The resulting
	* object is not yet completely initialized.
	*/
	@:overload private function new(stack : sun.rmi.rmic.iiop.ContextStack, classDef : sun.tools.java.ClassDefinition, typeCode : Int) : Void;
	
	/**
	* Initialize this instance.
	*/
	@:overload private function initialize(directInterfaces : java.util.Vector<Dynamic>, directMethods : java.util.Vector<Dynamic>, directMembers : java.util.Vector<Dynamic>, stack : sun.rmi.rmic.iiop.ContextStack, quiet : Bool) : Bool;
	
	/*
	* Return Type or null if error. classDef may be null.
	*/
	@:overload private static function makeType(theType : sun.tools.java.Type, classDef : sun.tools.java.ClassDefinition, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.Type;
	
	/*
	* Check if exception is RemoteException or one of its parents.
	*/
	@:overload public static function isRemoteException(ex : sun.rmi.rmic.iiop.ClassType, env : sun.rmi.rmic.iiop.BatchEnvironment) : Bool;
	
	/*
	* Check if method is conforming.
	*/
	@:overload private function isConformingRemoteMethod(method : CompoundType_Method, quiet : Bool) : Bool;
	
	@:overload private function isIDLEntityException(type : sun.rmi.rmic.iiop.Type, method : CompoundType_Method, quiet : Bool) : Bool;
	
	/**
	* Convert all invalid types to valid ones.
	*/
	@:overload override private function swapInvalidTypes() : Void;
	
	/*
	* Add matching types to list. Return true if this type has not
	* been previously checked, false otherwise.
	*/
	@:overload override private function addTypes(typeCodeFilter : Int, checked : java.util.HashSet<Dynamic>, matching : java.util.Vector<Dynamic>) : Bool;
	
	/*
	* Update any method from 'currentMethods' which is defined in a
	* parent class so that it's 'declaredBy' field specifies the
	* parent.
	* @param current The class or interface to gather methods from.
	* @param currentMethods The list into which to put the methods.
	*  for contraint 6.
	* @param quiet true if silent errors.
	* @param stack the context stack.
	* @return currentMethods or null if failed a constraint check.
	*/
	@:overload private function updateParentClassMethods(current : sun.tools.java.ClassDefinition, currentMethods : java.util.Vector<Dynamic>, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : java.util.Vector<Dynamic>;
	
	/*
	* Add all of the public and protected methods defined in
	* current (other than initializers) to allMethods. If a sub-interface
	* re-declares an inherited method, it will not be added.
	* @param current The class or interface to gather methods from.
	* @param directMethods The list into which to put the methods.
	* @param noMultiInheritedMethods A flag to enable/disable checking
	*  for contraint 6.
	* @param quiet true if silent errors.
	* @param stack the context stack.
	* @return directMethods or null if failed a constraint check.
	*/
	@:overload private function addAllMethods(current : sun.tools.java.ClassDefinition, directMethods : java.util.Vector<Dynamic>, noMultiInheritedMethods : Bool, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : java.util.Vector<Dynamic>;
	
	@:overload private function inheritsFrom(def : sun.tools.java.ClassDefinition, otherDef : sun.tools.java.ClassDefinition) : Bool;
	
	/*
	* Add all of the interfaces implemented directly by current
	* to the list. Returns null if any are non-conforming.
	*/
	@:overload private function addRemoteInterfaces(list : java.util.Vector<Dynamic>, allowNonConforming : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : java.util.Vector<Dynamic>;
	
	/*
	* Add all of the interfaces implemented directly by current
	* to the list.
	*/
	@:overload private function addNonRemoteInterfaces(list : java.util.Vector<Dynamic>, stack : sun.rmi.rmic.iiop.ContextStack) : java.util.Vector<Dynamic>;
	
	/*
	* Walk self, adding constants and data members.
	* @return true if all conform, false otherwise.
	*/
	@:overload private function addAllMembers(allMembers : java.util.Vector<Dynamic>, onlyConformingConstants : Bool, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : Bool;
	
	/*
	* Walk self, adding constants.
	* @return true if all conform, false otherwise.
	*/
	@:overload private function addConformingConstants(allMembers : java.util.Vector<Dynamic>, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : Bool;
	
	@:overload private function getMethodExceptions(member : sun.tools.java.MemberDefinition, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : java.NativeArray<sun.rmi.rmic.iiop.ValueType>;
	
	@:overload private static function getVisibilityString(member : sun.tools.java.MemberDefinition) : String;
	
	@:overload private function assertNotImpl(type : sun.rmi.rmic.iiop.Type, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack, enclosing : CompoundType, dataMember : Bool) : Bool;
	
	
}
/**
* A CompoundType.Method object encapsulates IIOP-specific information
* about a particular method in the interface represented by the outer
* instance.
*/
@:native('sun$rmi$rmic$iiop$CompoundType$Method') extern class CompoundType_Method implements sun.rmi.rmic.iiop.ContextElement implements java.lang.Cloneable
{
	/**
	* Is this method inherited?
	*/
	@:overload public function isInherited() : Bool;
	
	/**
	* Is this method an attribute?
	* Return true if getAttributeKind != ATTRIBUTE_NONE.
	*/
	@:overload public function isAttribute() : Bool;
	
	/**
	* Is this method a read-write attribute?
	*/
	@:overload public function isReadWriteAttribute() : Bool;
	
	/**
	* Return the attribute kind.
	*/
	@:overload public function getAttributeKind() : Int;
	
	/**
	* Return the attribute name. Will be null if
	* attribute kind == ATTRIBUTE_NONE.
	*/
	@:overload public function getAttributeName() : String;
	
	/**
	* For kinds ATTRIBUTE_GET_RW or ATTRIBUTE_IS_RW, return
	* the index of the matching ATTRIBUTE_SET method, and
	* vice-versa. For all other cases, return -1.
	*/
	@:overload public function getAttributePairIndex() : Int;
	
	/**
	* Return context element name.
	*/
	@:overload public function getElementName() : String;
	
	/**
	* Equality check based on method signature.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return a new Method object that is a legal combination of
	* this method object and another one.
	*
	* This requires determining the exceptions declared by the
	* combined method, which must be only those exceptions
	* that may thrown by both of the old methods.
	*/
	@:overload public function mergeWith(other : CompoundType_Method) : CompoundType_Method;
	
	/**
	* Return the compound type which contains this method.
	*/
	@:overload public function getEnclosing() : CompoundType;
	
	/**
	* Return the identifier for the class or interface which
	* declares this method.
	*/
	@:overload public function getDeclaredBy() : sun.tools.java.Identifier;
	
	/**
	* Return the visibility (e.g. "public final") of this member.
	*/
	@:overload public function getVisibility() : String;
	
	/**
	* Methods to check various attributes.
	*/
	@:overload public function isPublic() : Bool;
	
	@:overload public function isProtected() : Bool;
	
	@:overload public function isPrivate() : Bool;
	
	@:overload public function isStatic() : Bool;
	
	/**
	* Return the name of this method.
	*/
	@:overload public function getName() : String;
	
	/**
	* IDL_Naming
	* Return the IDL name of this method.
	*/
	@:overload public function getIDLName() : String;
	
	/**
	* Return the type of this method.
	*/
	@:overload public function getType() : sun.tools.java.Type;
	
	/**
	* Return true if this is a constructor.
	*/
	@:overload public function isConstructor() : Bool;
	
	/**
	* Return true if this is NOT a constructor && is not
	* an attribute.
	*/
	@:overload public function isNormalMethod() : Bool;
	
	/**
	* Get the return type of this method. May be null.
	*/
	@:overload public function getReturnType() : sun.rmi.rmic.iiop.Type;
	
	/**
	* Return the argument types of this method.
	*/
	@:overload public function getArguments() : java.NativeArray<sun.rmi.rmic.iiop.Type>;
	
	/**
	* Return the names of the argument types of this method.
	*/
	@:overload public function getArgumentNames() : java.NativeArray<String>;
	
	/**
	* Return the MemberDefinition from which this method was created.
	*/
	@:overload public function getMemberDefinition() : sun.tools.java.MemberDefinition;
	
	/**
	* Return an array of the exception classes declared to be
	* thrown by this remote method.
	*
	* For methods with the same name and type signature inherited
	* from multiple remote interfaces, the array will contain
	* the set of exceptions declared in all of the interfaces'
	* methods that can be legally thrown in each of them.
	*/
	@:overload public function getExceptions() : java.NativeArray<sun.rmi.rmic.iiop.ValueType>;
	
	/**
	* Same as getExceptions(), except when method is in an
	* ImplementationType and the exceptions list is narrower.
	*/
	@:overload public function getImplExceptions() : java.NativeArray<sun.rmi.rmic.iiop.ValueType>;
	
	/**
	* Return an array containing only those exceptions which
	* need to be caught.  Removes java.rmi.RemoteException,
	* java.lang.RuntimeException, java.lang.Error, and their
	* subclasses, then removes any exceptions which are more
	* derived than another in the list. Returns null if no
	* exceptions need to be caught.
	*/
	@:overload public function getUniqueCatchList(list : java.NativeArray<sun.rmi.rmic.iiop.ValueType>) : java.NativeArray<sun.rmi.rmic.iiop.ValueType>;
	
	/**
	* Return an array containing only those exceptions which need to be
	* handled explicitly by the stub.  Removes java.lang.RuntimeException,
	* java.lang.Error, and their subclasses, since these are all passed
	* back as CORBA system exceptions.  Also removes subclasses of
	* java.rmi.RemoteException but not java.rmi.RemoteException itself,
	* since this may need to be thrown by the stub.
	*/
	@:overload public function getFilteredStubExceptions(list : java.NativeArray<sun.rmi.rmic.iiop.ValueType>) : java.NativeArray<sun.rmi.rmic.iiop.ValueType>;
	
	/**
	* Return the string representation of this method.
	*/
	@:overload public function toString() : String;
	
	/**
	* Set attribute kind. May only be called during initialization.
	*/
	@:overload public function setAttributeKind(kind : Int) : Void;
	
	/**
	* Set pair index. May only be called during initialization.
	*/
	@:overload public function setAttributePairIndex(index : Int) : Void;
	
	/**
	* Set attribute name. May only be called during initialization.
	*/
	@:overload public function setAttributeName(name : String) : Void;
	
	/**
	* Set the idl name. May only be called during initialization.
	*/
	@:overload public function setIDLName(idlName : String) : Void;
	
	/**
	* Set the implExceptions array. May only be called during initialization.
	*/
	@:overload public function setImplExceptions(exceptions : java.NativeArray<sun.rmi.rmic.iiop.ValueType>) : Void;
	
	/**
	* Set the declaredBy Identifier. May only be called during initialization.
	*/
	@:overload public function setDeclaredBy(by : sun.tools.java.Identifier) : Void;
	
	/**
	* Convert all invalid types to valid ones.
	*/
	@:overload private function swapInvalidTypes() : Void;
	
	/**
	* Release all resources.
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Create a new Method object corresponding to the given
	* method definition.
	*/
	@:overload public function new(enclosing : CompoundType, memberDef : sun.tools.java.MemberDefinition, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Cloning is supported by returning a shallow copy of this object.
	*/
	@:overload private function clone() : Dynamic;
	
	
}
/**
* An CompoundType.Member object wraps a Type and a value representing
* a data member, including constants.
*/
@:native('sun$rmi$rmic$iiop$CompoundType$Member') extern class CompoundType_Member implements sun.rmi.rmic.iiop.ContextElement implements java.lang.Cloneable
{
	/**
	* Return context element name.
	*/
	@:overload public function getElementName() : String;
	
	/**
	* Return the type of this member.
	*/
	@:overload public function getType() : sun.rmi.rmic.iiop.Type;
	
	/**
	* Return the name of this member.
	*/
	@:overload public function getName() : String;
	
	/**
	* IDL_Naming
	* Return the IDL name of this member.
	*/
	@:overload public function getIDLName() : String;
	
	/**
	* Return the visibility (e.g. "public final") of this member.
	*/
	@:overload public function getVisibility() : String;
	
	/**
	* Methods to check various attributes.
	*/
	@:overload public function isPublic() : Bool;
	
	@:overload public function isPrivate() : Bool;
	
	@:overload public function isStatic() : Bool;
	
	@:overload public function isFinal() : Bool;
	
	@:overload public function isTransient() : Bool;
	
	/**
	* Return the value of this member. May be null.
	*/
	@:overload public function getValue() : String;
	
	/**
	* Return true if this member represents an inner class declaration,
	* false otherwise.
	*/
	@:overload public function isInnerClassDeclaration() : Bool;
	
	/**
	* Return true if this member represents a constant.
	*/
	@:overload public function isConstant() : Bool;
	
	/**
	* Return the string representation of this constant.
	*/
	@:overload public function toString() : String;
	
	/**
	* Convert all invalid types to valid ones.
	*/
	@:overload private function swapInvalidTypes() : Void;
	
	@:overload private function setTransient() : Void;
	
	@:overload private function getMemberDefinition() : sun.tools.java.MemberDefinition;
	
	/**
	* Release all resources.
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Create a new Member object.
	*/
	@:overload public function new(member : sun.tools.java.MemberDefinition, value : String, stack : sun.rmi.rmic.iiop.ContextStack, enclosing : CompoundType) : Void;
	
	@:overload public function init(stack : sun.rmi.rmic.iiop.ContextStack, enclosing : CompoundType) : Void;
	
	@:overload public function setIDLName(name : String) : Void;
	
	/**
	* Cloning is supported by returning a shallow copy of this object.
	*/
	@:overload private function clone() : Dynamic;
	
	
}

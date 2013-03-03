package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MethodImpl extends com.sun.tools.jdi.TypeComponentImpl implements com.sun.jdi.Method
{
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	@:overload @:public @:final public function allLineLocations() : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public public function allLineLocations(stratumID : String, sourceName : String) : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public @:final public function locationsOfLine(lineNumber : Int) : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public public function locationsOfLine(stratumID : String, sourceName : String, lineNumber : Int) : java.util.List<com.sun.jdi.Location>;
	
	/**
	* @return a text representation of the declared return type
	* of this method.
	*/
	@:overload @:public public function returnTypeName() : String;
	
	@:overload @:public public function returnType() : com.sun.jdi.Type;
	
	@:overload @:public public function findType(signature : String) : com.sun.jdi.Type;
	
	@:overload @:public public function argumentTypeNames() : java.util.List<String>;
	
	@:overload @:public public function argumentSignatures() : java.util.List<String>;
	
	@:overload @:public public function argumentTypes() : java.util.List<com.sun.jdi.Type>;
	
	@:overload @:public public function compareTo(method : com.sun.jdi.Method) : Int;
	
	@:overload @:public public function isAbstract() : Bool;
	
	@:overload @:public public function isSynchronized() : Bool;
	
	@:overload @:public public function isNative() : Bool;
	
	@:overload @:public public function isVarArgs() : Bool;
	
	@:overload @:public public function isBridge() : Bool;
	
	@:overload @:public public function isConstructor() : Bool;
	
	@:overload @:public public function isStaticInitializer() : Bool;
	
	@:overload @:public public function isObsolete() : Bool;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* Returns the {@link Location} of this method, if there
	* is executable code associated with it.
	*
	* @return the {@link Location} of this mirror, or null if
	* this is an abstract method; native methods will return a
	* Location object whose codeIndex is -1.
	*/
	@:overload @:public public function location() : com.sun.jdi.Location;
	
	/**
	* Returns a {@link Location} for the given code index.
	*
	* @return the {@link Location} corresponding to the
	* given code index or null if the specified code index is not a
	* valid code index for this method (native and abstract methods
	* will always return null).
	*/
	@:overload @:public public function locationOfCodeIndex(codeIndex : haxe.Int64) : com.sun.jdi.Location;
	
	/**
	* Determines if this object mirrors a protected item.
	* For {@link ArrayType}, the return value depends on the
	* array component type. For primitive arrays the return value
	* is always false. For object arrays, the return value is the
	* same as would be returned for the component type.
	* For primitive classes, such as {@link java.lang.Integer#TYPE},
	* the return value is always false.
	*
	* @return <code>true</code> for items with private access;
	* <code>false</code> otherwise.
	*/
	@:overload @:public override public function isProtected() : Bool;
	
	/**
	* Determines if this TypeComponent is final.
	* Return value is undefined for constructors and static initializers.
	*
	* @return <code>true</code> if this type component was declared
	* final; false otherwise.
	*/
	@:overload @:public override public function isFinal() : Bool;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	/**
	* Returns a list containing each {@link LocalVariable} that is
	* declared as an argument of this method.
	*
	* If local variable information is not available, values of
	* actual arguments to method invocations can be obtained
	* by using the method {@link StackFrame#getArgumentValues()}
	*
	* @return the list of {@link LocalVariable} arguments.
	* If there are no arguments, a zero-length list is returned.
	* @throws AbsentInformationException if there is no variable
	* information for this method.
	* Generally, local variable information is not available for
	* native or abstract methods (that is, their argument name
	* information is not available), thus they will throw this exception.
	*/
	@:overload @:public public function arguments() : java.util.List<com.sun.jdi.LocalVariable>;
	
	/**
	* Returns an array containing the bytecodes for this method.
	* <P>
	* Not all target virtual machines support this operation.
	* Use {@link VirtualMachine#canGetBytecodes()}
	* to determine if the operation is supported.
	*
	* @return the array of bytecodes; abstract and native methods
	* will return a zero-length array.
	* @throws java.lang.UnsupportedOperationException if
	* the target virtual machine does not support
	* the retrieval of bytecodes.
	*/
	@:overload @:public public function bytecodes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the generic signature for this TypeComponent if there is one.
	* Generic signatures are described in the
	* <cite>The Java&trade; Virtual Machine Specification</cite>.
	*
	* @return a string containing the generic signature, or <code>null</code>
	* if there is no generic signature.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function genericSignature() : String;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public public function compareTo(o : Dynamic) : Int;
	
	/**
	* Gets the name of this type component.
	* <P>
	* Note: for fields, this is the field name; for methods,
	* this is the method name; for constructors, this is &lt;init&gt;;
	* for static initializers, this is &lt;clinit&gt;.
	*
	* @return a string containing the name.
	*/
	@:overload @:public override public function name() : String;
	
	/**
	* Returns the type in which this component was declared. The
	* returned {@link ReferenceType} mirrors either a class or an
	* interface in the target VM.
	*
	* @return a {@link ReferenceType} for the type that declared
	* this type component.
	*/
	@:overload @:public override public function declaringType() : com.sun.jdi.ReferenceType;
	
	/**
	* Determines if this TypeComponent is static.
	* Return value is undefined for constructors and static initializers.
	*
	* @return <code>true</code> if this type component was declared
	* static; false otherwise.
	*/
	@:overload @:public override public function isStatic() : Bool;
	
	/**
	* Gets the JNI-style signature for this type component. The
	* signature is encoded type information as defined
	* in the JNI documentation. It is a convenient, compact format for
	* for manipulating type information internally, not necessarily
	* for display to an end user. See {@link Field#typeName} and
	* {@link Method#returnTypeName} for ways to help get a more readable
	* representation of the type.
	*
	* @see <a href="doc-files/signature.html">Type Signatures</a>
	* @return a string containing the signature
	*/
	@:overload @:public override public function signature() : String;
	
	/**
	* Determines if this TypeComponent is synthetic. Synthetic members
	* are generated by the compiler and are not present in the source
	* code for the containing class.
	* <p>
	* Not all target VMs support this query. See
	* {@link VirtualMachine#canGetSyntheticAttribute} to determine if the
	* operation is supported.
	*
	* @return <code>true</code> if this type component is synthetic;
	* <code>false</code> otherwise.
	* @throws java.lang.UnsupportedOperationException if the target
	* VM cannot provide information on synthetic attributes.
	*/
	@:overload @:public override public function isSynthetic() : Bool;
	
	/**
	* Determines if this object mirrors a private item.
	* For {@link ArrayType}, the return value depends on the
	* array component type. For primitive arrays the return value
	* is always false. For object arrays, the return value is the
	* same as would be returned for the component type.
	* For primitive classes, such as {@link java.lang.Integer#TYPE},
	* the return value is always false.
	*
	* @return <code>true</code> for items with private access;
	* <code>false</code> otherwise.
	*/
	@:overload @:public override public function isPrivate() : Bool;
	
	/**
	* Determines if this object mirrors a public item.
	* For {@link ArrayType}, the return value depends on the
	* array component type. For primitive arrays the return value
	* is always true. For object arrays, the return value is the
	* same as would be returned for the component type.
	* For primitive classes, such as {@link java.lang.Integer#TYPE},
	* the return value is always true.
	*
	* @return <code>true</code> for items with public access;
	* <code>false</code> otherwise.
	*/
	@:overload @:public override public function isPublic() : Bool;
	
	/**
	* Returns a list containing each {@link LocalVariable} declared
	* in this method. The list includes any variable declared in any
	* scope within the method. It may contain multiple variables of the
	* same name declared within disjoint scopes. Arguments are considered
	* local variables and will be present in the returned list.
	*
	* If local variable information is not available, values of
	* actual arguments to method invocations can be obtained
	* by using the method {@link StackFrame#getArgumentValues()}
	*
	* @return the list of {@link LocalVariable} objects which mirror
	* local variables declared in this method in the target VM.
	* If there are no local variables, a zero-length list is returned.
	* @throws AbsentInformationException if there is no variable
	* information for this method.
	* Generally, local variable information is not available for
	* native or abstract methods (that is, their argument name
	* information is not available), thus they will throw this exception.
	*/
	@:overload @:public public function variables() : java.util.List<com.sun.jdi.LocalVariable>;
	
	/**
	* Determines if this object mirrors a package private item.
	* A package private item is declared with no access specifier.
	* For {@link ArrayType}, the return value depends on the
	* array component type. For primitive arrays the return value
	* is always false. For object arrays, the return value is the
	* same as would be returned for the component type.
	* For primitive classes, such as {@link java.lang.Integer#TYPE},
	* the return value is always false.
	*
	* @return <code>true</code> for items with package private access;
	* <code>false</code> otherwise.
	*/
	@:overload @:public override public function isPackagePrivate() : Bool;
	
	/**
	* Returns the Java<sup><font size=-2>TM</font></sup>
	* programming language modifiers, encoded in an integer.
	* <p>
	* The modifier encodings are defined in
	* <cite>The Java&trade; Virtual Machine Specification</cite>
	* in the <code>access_flag</code> tables for classes(section 4.1), fields(section 4.5), and methods(section 4.6).
	*/
	@:overload @:public override public function modifiers() : Int;
	
	/**
	* Returns a list containing each {@link LocalVariable} of a
	* given name in this method.
	* Multiple variables can be returned
	* if the same variable name is used in disjoint
	* scopes within the method.
	*
	* @return the list of {@link LocalVariable} objects of the given
	* name.
	* If there are no matching local variables, a zero-length list
	* is returned.
	* @throws AbsentInformationException if there is no variable
	* information for this method.
	* Generally, local variable information is not available for
	* native or abstract methods (that is, their argument name
	* information is not available), thus they will throw this exception.
	*/
	@:overload @:public public function variablesByName(name : String) : java.util.List<com.sun.jdi.LocalVariable>;
	
	
}
/*
* A container class for the return value to allow
* proper type-checking.
*/
@:native('com$sun$tools$jdi$MethodImpl$ReturnContainer') @:internal extern class MethodImpl_ReturnContainer implements com.sun.tools.jdi.ValueContainer
{
	@:overload @:public public function type() : com.sun.jdi.Type;
	
	@:overload @:public public function typeName() : String;
	
	@:overload @:public public function signature() : String;
	
	@:overload @:public public function findType(signature : String) : com.sun.jdi.Type;
	
	
}
/*
* A container class for the argument to allow
* proper type-checking.
*/
@:native('com$sun$tools$jdi$MethodImpl$ArgumentContainer') @:internal extern class MethodImpl_ArgumentContainer implements com.sun.tools.jdi.ValueContainer
{
	@:overload @:public public function type() : com.sun.jdi.Type;
	
	@:overload @:public public function typeName() : String;
	
	@:overload @:public public function signature() : String;
	
	@:overload @:public public function findType(signature : String) : com.sun.jdi.Type;
	
	
}

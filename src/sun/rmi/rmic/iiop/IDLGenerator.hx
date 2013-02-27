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
extern class IDLGenerator extends sun.rmi.rmic.iiop.Generator
{
	/**
	* Default constructor for Main to use.
	*/
	@:overload public function new() : Void;
	
	/**
	* Return true if a new instance should be created for each
	* class on the command line. Subclasses which return true
	* should override newInstance() to return an appropriately
	* constructed instance.
	*/
	@:overload override private function requireNewInstance() : Bool;
	
	/**
	* Return true if non-conforming types should be parsed.
	* @param stack The context stack.
	*/
	@:overload override private function parseNonConforming(stack : sun.rmi.rmic.iiop.ContextStack) : Bool;
	
	/**
	* Create and return a top-level type.
	* @param env The compiler environment.
	* @param cdef The top-level class definition.
	* @return An RemoteType or null if is non-conforming.
	*/
	@:overload override private function getTopType(cdef : sun.tools.java.ClassDefinition, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.CompoundType;
	
	/**
	* Return an Identifier which contains the fully-qualified IDL filename
	* for the given OutputType.
	* The OutputType contains a filename string (not directory) and Type.
	* @param ot the OutputType for which directory nesting is to be defined.
	* @return the new identifier.
	*/
	@:overload private function getOutputId(ot : OutputType) : sun.tools.java.Identifier;
	
	/**
	* Return the file name extension for the given file name (e.g. ".java").
	* All files generated with the ".java" extension will be compiled. To
	* change this behavior for ".java" files, override the compileJavaSourceFile
	* method to return false.
	* @param outputType One of the items returned by getOutputTypesFor(...)
	*/
	@:overload private function getFileNameExtensionFor(outputType : OutputType) : String;
	
	/**
	* Examine and consume command line arguments.
	* @param argv The command line arguments. Ignore null
	* and unknown arguments. Set each consumed argument to null.
	* @param error Report any errors using the main.error() methods.
	* @return true if no errors, false otherwise.
	*/
	@:overload override public function parseArgs(argv : java.NativeArray<String>, main : sun.rmi.rmic.Main) : Bool;
	
	/**
	* Return an array of OutputTypes for the IDL files that need to be
	* generated for the given top-level type.
	* OutputTypes contain filename string (not directory) and Type.
	* @param topType The type returned by getTopType().
	* @param alreadyChecked A set of Types which have already been checked.
	* @return Array of OutputTypes to generate
	*/
	@:overload override private function getOutputTypesFor(topType : sun.rmi.rmic.iiop.CompoundType, alreadyChecked : java.util.HashSet<Dynamic>) : java.NativeArray<OutputType>;
	
	/**
	* Get all referenced types of a given tyoe for which an IDL file needs
	* to be generated.
	* @param ct The given type.
	* @return Vector of Types for which IDL must be generated.
	*/
	@:overload private function getAllReferencesFor(ct : sun.rmi.rmic.iiop.CompoundType) : java.util.Vector<Dynamic>;
	
	/**
	* Accumulate and filter all those types that are referenced by the given
	* referenced types.
	* Keep only those for which IDL is to be generated.
	* @param refHash Hashtable containing the given types
	* @param spcHash Hashtable containing referenced specials (IDL typedefs)
	* @param arrHash Hashtable containing referenced arrays (dimensioned)
	*/
	@:overload private function accumulateReferences(refHash : java.util.Hashtable<Dynamic, Dynamic>, spcHash : java.util.Hashtable<Dynamic, Dynamic>, arrHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Determine if IDL should be generated for a referenced type.
	* Do not generate IDL for a CORBA Object reference. It gets mapped
	* to the original IDL or to Object (if exactly org.omg.CORBA.Object)
	* Generate (boxed) IDL for an IDL Entity unless it is an IDL user
	* exception, a ValueBase, an AbstractBase (or a CORBA Object).
	* Do not generate IDL for Implementation classes..unless they inherit
	* from multiple distinct remote interfaces
	* @param t The type to check.
	* @return true or false
	*/
	@:overload private function isIDLGeneratedFor(t : sun.rmi.rmic.iiop.CompoundType) : Bool;
	
	/**
	* Write the output for the given OutputFileName into the output stream.
	* (The IDL mapping for java.lang.Class is generated from
	* javax.rmi.CORBA.ClassDesc in the tools workspace)
	* @param OutputType ot One of the items returned by getOutputTypesFor(...)
	* @param alreadyChecked A set of Types which have already been checked.
	*  Intended to be passed to Type.collectMatching(filter,alreadyChecked).
	* @param p The output stream.
	*/
	@:overload private function writeOutputFor(ot : OutputType, alreadyChecked : java.util.HashSet<Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL interface definition for a Java implementation class
	* @param t The current ImplementationType
	* @param p The output stream.
	*/
	@:overload private function writeImplementation(t : sun.rmi.rmic.iiop.ImplementationType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL valuetype definition for
	* 1) a nonconforming Java class
	* 2) a nonconforming Java interface (that is not an AbstractType)
	* @param t The current NC Type (NCClassType or NCInterfaceType)
	* @param p The output stream.
	*/
	@:overload private function writeNCType(t : sun.rmi.rmic.iiop.CompoundType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL interface definition for either:
	* 1) a conforming Java remote interface (RemoteType)..or
	* 2) a non-conforming Java interface whose methods all throw
	*     java.rmi.RemoteException (AbstractType)
	* @param t The current RemoteType
	* @param p The output stream.
	*/
	@:overload private function writeRemote(t : sun.rmi.rmic.iiop.RemoteType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL valuetype definition for a conforming Java class.
	* Methods and constructors are optional..controlled by -valueMethods flag
	* @param t The current ValueType
	* @param p The output stream.
	*/
	@:overload private function writeValue(t : sun.rmi.rmic.iiop.ValueType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write IDL prolog for a CompoundType.
	* @param t The CompoundType.
	* @param refHash Hashtable loaded with type references.
	* @param spcHash Hashtable loaded with special type references.
	* @param arrHash Hashtable loaded with array references.
	* @param excHash Hashtable loaded with exceptions thrown.
	* @param inhHash Hashtable loaded with inherited types.
	* @param p The output stream.
	*/
	@:overload private function writeProlog(t : sun.rmi.rmic.iiop.CompoundType, refHash : java.util.Hashtable<Dynamic, Dynamic>, spcHash : java.util.Hashtable<Dynamic, Dynamic>, arrHash : java.util.Hashtable<Dynamic, Dynamic>, excHash : java.util.Hashtable<Dynamic, Dynamic>, inhHash : java.util.Hashtable<Dynamic, Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write IDL epilog for a CompoundType.
	* @param t The CompoundType.
	* @param refHash Hashtable loaded with type references.
	* @param p The output stream.
	*/
	@:overload private function writeEpilog(t : sun.rmi.rmic.iiop.CompoundType, refHash : java.util.Hashtable<Dynamic, Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write special typedef
	* @param t A special Type.
	* @param p The output stream.
	*/
	@:overload private function writeSpecial(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a hard-coded IDL typedef definition for the special case
	* java.io.Serializable.
	* @param t The current Type
	* @param p The output stream.
	*/
	@:overload private function writeJavaIoSerializable(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a hard-coded IDL typedef definition for the special case
	* java.io.Externalizable.
	* @param t The current Type
	* @param p The output stream.
	*/
	@:overload private function writeJavaIoExternalizable(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a hard-coded IDL typedef definition for the special case
	* java.lang.Object.
	* @param t The current Type
	* @param p The output stream.
	*/
	@:overload private function writeJavaLangObject(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a hard-coded IDL typedef definition for the special case
	* java.rmi.Remote.
	* @param t The current Type
	* @param p The output stream.
	*/
	@:overload private function writeJavaRmiRemote(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a hard-coded IDL typedef definition for the special case
	* org.omg.CORBA.portable.IDLEntity
	* @param t The current Type
	* @param p The output stream.
	*/
	@:overload private function writeIDLEntity(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Filter and collect non-duplicate inherited interfaces for a type
	* @param ct The current CompoundType
	* @param inhHash Hashtable containing the inherited interfaces
	*/
	@:overload private function getInterfaces(ct : sun.rmi.rmic.iiop.CompoundType, inhHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Filter and add base class inheritance for a class type
	* @param ct The current CompoundType
	* @param inhHash Hashtable containing inherited types
	*/
	@:overload private function getInheritance(ct : sun.rmi.rmic.iiop.CompoundType, inhHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Collect and filter type and array references from methods
	* @param mthVec Given Vector of methods
	* @param refHash Hashtable for type references
	* @param spcHash Hashtable for special type references
	* @param arrHash Hashtable for array references
	* @param excHash Hashtable for exceptions thrown
	*/
	@:overload private function getMethodReferences(mthVec : java.util.Vector<Dynamic>, refHash : java.util.Hashtable<Dynamic, Dynamic>, spcHash : java.util.Hashtable<Dynamic, Dynamic>, arrHash : java.util.Hashtable<Dynamic, Dynamic>, excHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Collect and filter type and array references from data members
	* @param datVec Given Vector of data members
	* @param refHash Hashtable for type references
	* @param spcHash Hashtable for special type references
	* @param arrHash Hashtable for array references
	*/
	@:overload private function getMemberReferences(datVec : java.util.Vector<Dynamic>, refHash : java.util.Hashtable<Dynamic, Dynamic>, spcHash : java.util.Hashtable<Dynamic, Dynamic>, arrHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Add reference for given type avoiding duplication.
	* Sort into specials, arrays and regular references.
	* Filter out types which are not required.
	* @param t Given Type
	* @param refHash Hashtable for type references
	* @param spcHash Hashtable for special type references
	* @param arrHash Hashtable for array references
	*/
	@:overload private function addReference(ref : sun.rmi.rmic.iiop.Type, refHash : java.util.Hashtable<Dynamic, Dynamic>, spcHash : java.util.Hashtable<Dynamic, Dynamic>, arrHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Determine whether given Type is a special reference.
	* Special cases are: java.io.Serializable, java.io.Externalizable,
	* java.lang.Object, java.rmi.Remote and org.omg.CORBA.portable.IDLEntity
	* They are special because they have a hard-coded typedef defined in the
	* spec.
	* @param ref A referenced Type
	* @return boolean indicating whether it's a special reference
	*/
	@:overload private function isSpecialReference(ref : sun.rmi.rmic.iiop.Type) : Bool;
	
	/**
	* Collect and filter thrown exceptions for a given pre-filtered method.
	* Keep only 'checked' exception classes minus java.rmi.RemoteException
	* and its subclasses
	* @param method The current method
	* @param excHash Hashtable containing non-duplicate thrown exceptions
	*/
	@:overload private function getExceptions(mth : sun.rmi.rmic.iiop.CompoundType.CompoundType_Method, excHash : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Collect and filter methods for a type.
	* Remove any private or inherited methods.
	* @param ct The current CompoundType
	* @return Vector containing the methods
	*/
	@:overload private function getMethods(ct : sun.rmi.rmic.iiop.CompoundType) : java.util.Vector<Dynamic>;
	
	/**
	* Collect constants for a type.
	* A valid constant is a "public final static" field with a compile-time
	* constant value for a primitive type or String
	* @param ct The current CompoundType
	* @return Vector containing the constants
	*/
	@:overload private function getConstants(ct : sun.rmi.rmic.iiop.CompoundType) : java.util.Vector<Dynamic>;
	
	/**
	* Collect and sort data fields for a ValueType.
	* Sort in Java (not IDL) Unicode name string lexicographic increasing
	* order.
	* Non-static, non-transient fields are mapped.
	* If the type is a custom valuetype, only public fields are mapped.
	* @param ct The current CompoundType
	* @return Vector containing the data fields
	*/
	@:overload private function getData(t : sun.rmi.rmic.iiop.CompoundType) : java.util.Vector<Dynamic>;
	
	/**
	* Write forward references for referenced interfaces and valuetypes
	* ...but not if the reference is to a boxed IDLEntity,
	* @param refHash Hashtable loaded with referenced types
	* @param p The output stream.
	*/
	@:overload private function writeForwardReferences(refHash : java.util.Hashtable<Dynamic, Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write forward reference for given type
	* @param t Given type
	* @param p The output stream.
	*/
	@:overload private function writeForwardReference(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write forward reference for boxed valuetype for single dimension of IDL
	* sequence.
	* If the dimension is <1 and the element is a CompoundType, write a
	* forward declare for the element
	* @param at ArrayType for forward declare
	* @param dim The dimension to write
	* @param p The output stream.
	*/
	@:overload private function writeForwardReference(at : sun.rmi.rmic.iiop.ArrayType, dim : Int, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #includes for boxed IDLEntity references.
	* @param refHash Hashtable loaded with referenced types
	* @param p The output stream.
	*/
	@:overload private function writeIDLEntityIncludes(refHash : java.util.Hashtable<Dynamic, Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #includes
	* @param incHash Hashtable loaded with Types to include
	* @param isThrown true if Types are thrown exceptions
	* @param p The output stream.
	*/
	@:overload private function writeIncludes(incHash : java.util.Hashtable<Dynamic, Dynamic>, isThrown : Bool, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write includes for boxedRMI valuetypes for IDL sequences.
	* Write only the maximum dimension found for an ArrayType.
	* @param arrHash Hashtable loaded with array types
	* @param p The output stream.
	*/
	@:overload private function writeBoxedRMIIncludes(arrHash : java.util.Hashtable<Dynamic, Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #includes
	* @param incHash Hashtable loaded with Types to include
	* @param p The output stream.
	*/
	@:overload private function writeInheritedIncludes(inhHash : java.util.Hashtable<Dynamic, Dynamic>, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a #include.
	* @param t Type to include
	* @param dim The dimension to write if t is an array.
	* @param isThrown boolean indicating if include is for thrown exception.
	* @param p The output stream.
	*/
	@:overload private function writeInclude(t : sun.rmi.rmic.iiop.Type, dim : Int, isThrown : Bool, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a #include doing user specified -idlFile translation (if any) for
	* IDLEntities.
	* @param t Type to include.
	* @param modNames Preprocessed module names (default).
	* @param tName Preprocessed Type name (default).
	* @param p The output stream.
	*/
	@:overload private function writeInclude(t : sun.rmi.rmic.iiop.Type, modNames : java.NativeArray<String>, tName : String, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Return the fully qualified Java Name for a Type.
	* IDLEntity preprocessing done by getIDLModuleNames(t)
	* @param t Given Type
	* @return Array containing the original module nesting.
	*/
	@:overload private function getQualifiedName(t : sun.rmi.rmic.iiop.Type) : String;
	
	/**
	* Return the global fully qualified IDL Name for a Type.
	* IDLEntity preprocessing done by getIDLModuleNames(t)
	* @param t Given Type
	* @return Array containing the original module nesting.
	*/
	@:overload private function getQualifiedIDLName(t : sun.rmi.rmic.iiop.Type) : String;
	
	/**
	* Return the IDL module nesting of the given Type.
	* For IDLEntity CompoundTypes (or their arrays) apply any user specified
	* -idlModule translation or, if none applicable, strip any package
	* prefix.
	* Add boxedIDL or boxedRMI modules if required.
	* @param t Given Type
	* @return Array containing the original module nesting.
	*/
	@:overload private function getIDLModuleNames(t : sun.rmi.rmic.iiop.Type) : java.NativeArray<String>;
	
	/**
	* Apply user specified -idlModule translation to package names of given
	* IDLEntity ct. Example:
	*   -idlModule foo.bar real::mod::nesting
	* @param ct CompoundType containing given IDLEntity.
	* @param vec Returned Vector of translated IDL module names.
	* @return boolean true if any translation was done.
	*/
	@:overload private function translateJavaPackage(ct : sun.rmi.rmic.iiop.CompoundType, vec : java.util.Vector<Dynamic>) : Bool;
	
	/**
	* Strip Java #pragma prefix and/or -pkgPrefix prefix package names from
	* given IDLEntity ct.
	* Strip any package prefix which may have been added by comparing with
	* repository id. For example in Java package fake.omega:
	*   repid = IDL:phoney.pfix/omega/Juliet:1.0 gives { "omega" }
	* @param ct CompoundType containing given IDLEntity.
	* @param vec Returned Vector of stripped IDL module names.
	*/
	@:overload private function stripJavaPackage(ct : sun.rmi.rmic.iiop.CompoundType, vec : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Write boxedRMI valuetype for a single dimension of an IDL sequence
	* indicated by the given OutputType.
	* The filename for the OutputType is of the form "seqn_elemName" where n
	* is the dimension required.
	* @param ot Given OutputType.
	* @param p The output stream.
	*/
	@:overload private function writeSequence(ot : OutputType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write valuetype for a boxed IDLEntity.
	* @param t Given CompoundType representing the IDLEntity.
	* @param p The output stream.
	*/
	@:overload private function writeBoxedIDL(t : sun.rmi.rmic.iiop.CompoundType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an exception.
	* @param t Given ClassType representing the exception.
	* @param p The output stream.
	*/
	@:overload private function writeException(t : sun.rmi.rmic.iiop.ClassType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #pragma to identify the repository ID of the given type
	* @param t The given Type.
	* @param p The output stream.
	*/
	@:overload private function writeRepositoryID(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write inheritance for an IDL interface or valuetype. Any class
	* inheritance precedes any interface inheritance.
	* For a valutype any inheritance from abstract interfaces then
	* follows the "supports" keyword.
	* @param inhHash Hashtable loaded with inherited Types
	* @param forValuetype true if writing inheritance for a valuetype
	* @param p The output stream.
	*/
	@:overload private function writeInherits(inhHash : java.util.Hashtable<Dynamic, Dynamic>, forValuetype : Bool, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL constant
	* @param constant The current CompoundType.Member constant
	* @param p The output stream.
	*/
	@:overload private function writeConstant(constant : sun.rmi.rmic.iiop.CompoundType.CompoundType_Member, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL data member
	* @param data The current CompoundType.Member data member
	* @param p The output stream.
	*/
	@:overload private function writeData(data : sun.rmi.rmic.iiop.CompoundType.CompoundType_Member, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL Attribute
	* @param attr The current CompoundType.Method attribute
	* @param p The output stream.
	*/
	@:overload private function writeAttribute(attr : sun.rmi.rmic.iiop.CompoundType.CompoundType_Method, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write an IDL method
	* @param method The current CompoundType.Method
	* @param p The output stream.
	*/
	@:overload private function writeMethod(method : sun.rmi.rmic.iiop.CompoundType.CompoundType_Method, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Remove escape character ("_"), if any, from given String
	* @param name Given String
	* @return String with any escape character removed
	*/
	@:overload private function unEsc(name : String) : String;
	
	/**
	* Write IDL banner into the output stream for a given Type
	* @param t The given Type.
	* @param dim The dimension required if t is an ArrayType.
	* @param isException true if writing an exception.
	* @param p The output stream.
	*/
	@:overload private function writeBanner(t : sun.rmi.rmic.iiop.Type, dim : Int, isException : Bool, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #include for orb.idl
	* @param p The output stream.
	*/
	@:overload private function writeIncOrb(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #ifndef guard into the output stream for a given Type
	* @param t The given Type.
	* @param dim The dimension required if t is an ArrayType.
	* @param isException true if writing an exception.
	* @param isForward. No #define needed if it's a forward declare
	* @param p The output stream.
	*/
	@:overload private function writeIfndef(t : sun.rmi.rmic.iiop.Type, dim : Int, isException : Bool, isForward : Bool, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write #endif bracket into the output stream
	* @param p The output stream.
	*/
	@:overload private function writeEndif(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write Module start bracketing for the given type into the output stream
	* @param t The given Type
	* @param p The output stream.
	*/
	@:overload private function writeModule1(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write Module end bracketing for the given type into the output stream
	* @param t The given Type
	* @param p The output stream.
	*/
	@:overload private function writeModule2(t : sun.rmi.rmic.iiop.Type, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	
}

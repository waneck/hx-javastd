package com.sun.tools.classfile;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* A framework for determining {@link Dependency dependencies} between class files.
*
* A {@link Dependency.Finder finder} is used to identify the dependencies of
* individual classes. Some finders may return subtypes of {@code Dependency} to
* further characterize the type of dependency, such as a dependency on a
* method within a class.
*
* A {@link Dependency.Filter filter} may be used to restrict the set of
* dependencies found by a finder.
*
* Dependencies that are found may be passed to a {@link Dependencies.Recorder
* recorder} so that the dependencies can be stored in a custom data structure.
*/
extern class Dependencies
{
	/**
	* Get the  default finder used to locate the dependencies for a class.
	* @return the default finder
	*/
	@:overload public static function getDefaultFinder() : com.sun.tools.classfile.Dependency.Dependency_Finder;
	
	/**
	* Get a finder used to locate the API dependencies for a class.
	* These include the superclass, superinterfaces, and classes referenced in
	* the declarations of fields and methods.  The fields and methods that
	* are checked can be limited according to a specified access.
	* The access parameter must be one of {@link AccessFlags#ACC_PUBLIC ACC_PUBLIC},
	* {@link AccessFlags#ACC_PRIVATE ACC_PRIVATE},
	* {@link AccessFlags#ACC_PROTECTED ACC_PROTECTED}, or 0 for
	* package private access. Members with greater than or equal accessibility
	* to that specified will be searched for dependencies.
	* @param access the access of members to be checked
	* @return an API finder
	*/
	@:overload public static function getAPIFinder(access : Int) : com.sun.tools.classfile.Dependency.Dependency_Finder;
	
	/**
	* Get the finder used to locate the dependencies for a class.
	* @return the finder
	*/
	@:overload public function getFinder() : com.sun.tools.classfile.Dependency.Dependency_Finder;
	
	/**
	* Set the finder used to locate the dependencies for a class.
	* @param f the finder
	*/
	@:overload public function setFinder(f : com.sun.tools.classfile.Dependency.Dependency_Finder) : Void;
	
	/**
	* Get the default filter used to determine included when searching
	* the transitive closure of all the dependencies.
	* Unless overridden, the default filter accepts all dependencies.
	* @return the default filter.
	*/
	@:overload public static function getDefaultFilter() : com.sun.tools.classfile.Dependency.Dependency_Filter;
	
	/**
	* Get a filter which uses a regular expression on the target's class name
	* to determine if a dependency is of interest.
	* @param pattern the pattern used to match the target's class name
	* @return a filter for matching the target class name with a regular expression
	*/
	@:overload public static function getRegexFilter(pattern : java.util.regex.Pattern) : com.sun.tools.classfile.Dependency.Dependency_Filter;
	
	/**
	* Get a filter which checks the package of a target's class name
	* to determine if a dependency is of interest. The filter checks if the
	* package of the target's class matches any of a set of given package
	* names. The match may optionally match subpackages of the given names as well.
	* @param packageNames the package names used to match the target's class name
	* @param matchSubpackages whether or not to match subpackages as well
	* @return a filter for checking the target package name against a list of package names
	*/
	@:overload public static function getPackageFilter(packageNames : java.util.Set<String>, matchSubpackages : Bool) : com.sun.tools.classfile.Dependency.Dependency_Filter;
	
	/**
	* Get the filter used to determine the dependencies included when searching
	* the transitive closure of all the dependencies.
	* Unless overridden, the default filter accepts all dependencies.
	* @return the filter
	*/
	@:overload public function getFilter() : com.sun.tools.classfile.Dependency.Dependency_Filter;
	
	/**
	* Set the filter used to determine the dependencies included when searching
	* the transitive closure of all the dependencies.
	* @param f the filter
	*/
	@:overload public function setFilter(f : com.sun.tools.classfile.Dependency.Dependency_Filter) : Void;
	
	/**
	* Find the dependencies of a class, using the current
	* {@link Dependencies#getFinder finder} and
	* {@link Dependencies#getFilter filter}.
	* The search may optionally include the transitive closure of all the
	* filtered dependencies, by also searching in the classes named in those
	* dependencies.
	* @param classFinder a finder to locate class files
	* @param rootClassNames the names of the root classes from which to begin
	*      searching
	* @param transitiveClosure whether or not to also search those classes
	*      named in any filtered dependencies that are found.
	* @return the set of dependencies that were found
	* @throws ClassFileNotFoundException if a required class file cannot be found
	* @throws ClassFileError if an error occurs while processing a class file,
	*      such as an error in the internal class file structure.
	*/
	@:overload public function findAllDependencies(classFinder : com.sun.tools.classfile.Dependencies.Dependencies_ClassFileReader, rootClassNames : java.util.Set<String>, transitiveClosure : Bool) : java.util.Set<com.sun.tools.classfile.Dependency>;
	
	/**
	* Find the dependencies of a class, using the current
	* {@link Dependencies#getFinder finder} and
	* {@link Dependencies#getFilter filter}.
	* The search may optionally include the transitive closure of all the
	* filtered dependencies, by also searching in the classes named in those
	* dependencies.
	* @param classFinder a finder to locate class files
	* @param rootClassNames the names of the root classes from which to begin
	*      searching
	* @param transitiveClosure whether or not to also search those classes
	*      named in any filtered dependencies that are found.
	* @param recorder a recorder for handling the results
	* @throws ClassFileNotFoundException if a required class file cannot be found
	* @throws ClassFileError if an error occurs while processing a class file,
	*      such as an error in the internal class file structure.
	*/
	@:overload public function findAllDependencies(classFinder : com.sun.tools.classfile.Dependencies.Dependencies_ClassFileReader, rootClassNames : java.util.Set<String>, transitiveClosure : Bool, recorder : com.sun.tools.classfile.Dependencies.Dependencies_Recorder) : Void;
	
	
}
/**
* Thrown when a class file cannot be found.
*/
@:native('com$sun$tools$classfile$Dependencies$ClassFileNotFoundException') extern class Dependencies_ClassFileNotFoundException extends java.lang.Exception
{
	@:overload public function new(className : String) : Void;
	
	@:overload public function new(className : String, cause : java.lang.Throwable) : Void;
	
	public var className(default, null) : String;
	
	
}
/**
* Thrown when an exception is found processing a class file.
*/
@:native('com$sun$tools$classfile$Dependencies$ClassFileError') extern class Dependencies_ClassFileError extends java.lang.Error
{
	@:overload public function new(cause : java.lang.Throwable) : Void;
	
	
}
/**
* Service provider interface to locate and read class files.
*/
@:native('com$sun$tools$classfile$Dependencies$ClassFileReader') extern interface Dependencies_ClassFileReader
{
	/**
	* Get the ClassFile object for a specified class.
	* @param className the name of the class to be returned.
	* @return the ClassFile for the given class
	* @throws Dependencies#ClassFileNotFoundException if the classfile cannot be
	*   found
	*/
	@:overload public function getClassFile(className : String) : com.sun.tools.classfile.ClassFile;
	
	
}
/**
* Service provide interface to handle results.
*/
@:native('com$sun$tools$classfile$Dependencies$Recorder') extern interface Dependencies_Recorder
{
	/**
	* Record a dependency that has been found.
	* @param d
	*/
	@:overload public function addDependency(d : com.sun.tools.classfile.Dependency) : Void;
	
	
}
/**
* A location identifying a class.
*/
@:native('com$sun$tools$classfile$Dependencies$SimpleLocation') @:internal extern class Dependencies_SimpleLocation implements com.sun.tools.classfile.Dependency.Dependency_Location
{
	@:overload public function new(className : String) : Void;
	
	/**
	* Get the name of the class being depended on. This name will be used to
	* locate the class file for transitive dependency analysis.
	* @return the name of the class being depended on
	*/
	@:overload public function getClassName() : String;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
/**
* A dependency of one class on another.
*/
@:native('com$sun$tools$classfile$Dependencies$SimpleDependency') @:internal extern class Dependencies_SimpleDependency implements com.sun.tools.classfile.Dependency
{
	@:overload public function new(origin : com.sun.tools.classfile.Dependency.Dependency_Location, target : com.sun.tools.classfile.Dependency.Dependency_Location) : Void;
	
	@:overload public function getOrigin() : com.sun.tools.classfile.Dependency.Dependency_Location;
	
	@:overload public function getTarget() : com.sun.tools.classfile.Dependency.Dependency_Location;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
/**
* This class accepts all dependencies.
*/
@:native('com$sun$tools$classfile$Dependencies$DefaultFilter') @:internal extern class Dependencies_DefaultFilter implements com.sun.tools.classfile.Dependency.Dependency_Filter
{
	@:overload public function accepts(dependency : com.sun.tools.classfile.Dependency) : Bool;
	
	
}
/**
* This class accepts those dependencies whose target's class name matches a
* regular expression.
*/
@:native('com$sun$tools$classfile$Dependencies$TargetRegexFilter') @:internal extern class Dependencies_TargetRegexFilter implements com.sun.tools.classfile.Dependency.Dependency_Filter
{
	@:overload public function accepts(dependency : com.sun.tools.classfile.Dependency) : Bool;
	
	
}
/**
* This class accepts those dependencies whose class name is in a given
* package.
*/
@:native('com$sun$tools$classfile$Dependencies$TargetPackageFilter') @:internal extern class Dependencies_TargetPackageFilter implements com.sun.tools.classfile.Dependency.Dependency_Filter
{
	@:overload public function accepts(dependency : com.sun.tools.classfile.Dependency) : Bool;
	
	
}
/**
* This class identifies class names directly or indirectly in the constant pool.
*/
@:native('com$sun$tools$classfile$Dependencies$ClassDependencyFinder') @:internal extern class Dependencies_ClassDependencyFinder extends com.sun.tools.classfile.Dependencies.Dependencies_BasicDependencyFinder
{
	@:overload public function findDependencies(classfile : com.sun.tools.classfile.ClassFile) : java.lang.Iterable<com.sun.tools.classfile.Dependency>;
	
	
}
/**
* This class identifies class names in the signatures of classes, fields,
* and methods in a class.
*/
@:native('com$sun$tools$classfile$Dependencies$APIDependencyFinder') @:internal extern class Dependencies_APIDependencyFinder extends com.sun.tools.classfile.Dependencies.Dependencies_BasicDependencyFinder
{
	@:overload public function findDependencies(classfile : com.sun.tools.classfile.ClassFile) : java.lang.Iterable<com.sun.tools.classfile.Dependency>;
	
	
}
@:native('com$sun$tools$classfile$Dependencies$BasicDependencyFinder') @:internal extern class Dependencies_BasicDependencyFinder implements com.sun.tools.classfile.Dependency.Dependency_Finder
{
	/**
	* Find the immediate dependencies of a given class file.
	* @param classfile the class file to be examined
	* @return the dependencies located in the given class file.
	*/
	@:overload @:public public function findDependencies(classfile : com.sun.tools.classfile.ClassFile) : java.lang.Iterable<com.sun.tools.classfile.Dependency>;
	
	
}
@:native('com$sun$tools$classfile$Dependencies$BasicDependencyFinder$Visitor') @:internal extern class Dependencies_BasicDependencyFinder_Visitor implements com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<java.lang.Void, java.lang.Void> implements com.sun.tools.classfile.Type.Type_Visitor<java.lang.Void, java.lang.Void>
{
	@:overload public function visitClass(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitDouble(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Double_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitFieldref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Fieldref_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitFloat(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Float_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitInteger(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Integer_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitInterfaceMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InterfaceMethodref_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitInvokeDynamic(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InvokeDynamic_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitLong(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Long_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitMethodHandle(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodHandle_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitMethodType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodType_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Methodref_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitNameAndType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitString(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_String_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitUtf8(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Utf8_info, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitSimpleType(type : com.sun.tools.classfile.Type.Type_SimpleType, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitArrayType(type : com.sun.tools.classfile.Type.Type_ArrayType, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitMethodType(type : com.sun.tools.classfile.Type.Type_MethodType, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitClassSigType(type : com.sun.tools.classfile.Type.Type_ClassSigType, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitClassType(type : com.sun.tools.classfile.Type.Type_ClassType, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitTypeParamType(type : com.sun.tools.classfile.Type.Type_TypeParamType, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitWildcardType(type : com.sun.tools.classfile.Type.Type_WildcardType, p : java.lang.Void) : java.lang.Void;
	
	
}

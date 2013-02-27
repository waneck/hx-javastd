package com.sun.org.apache.bcel.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
/**
* The repository maintains informations about class interdependencies, e.g.,
* whether a class is a sub-class of another. Delegates actual class loading
* to SyntheticRepository with current class path by default.
*
* @see com.sun.org.apache.bcel.internal.util.Repository
* @see com.sun.org.apache.bcel.internal.util.SyntheticRepository
*
* @author <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class Repository
{
	/** @return currently used repository instance
	*/
	@:overload public static function getRepository() : com.sun.org.apache.bcel.internal.util.Repository;
	
	/** Set repository instance to be used for class loading
	*/
	@:overload public static function setRepository(rep : com.sun.org.apache.bcel.internal.util.Repository) : Void;
	
	/** Lookup class somewhere found on your CLASSPATH, or whereever the
	* repository instance looks for it.
	*
	* @return class object for given fully qualified class name, or null
	* if the class could not be found or parsed correctly
	*/
	@:overload public static function lookupClass(class_name : String) : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/**
	* Try to find class source via getResourceAsStream().
	* @see Class
	* @return JavaClass object for given runtime class
	*/
	@:overload public static function lookupClass(clazz : Class<Dynamic>) : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/** @return class file object for given Java class.
	*/
	@:overload public static function lookupClassFile(class_name : String) : com.sun.org.apache.bcel.internal.util.ClassPath.ClassPath_ClassFile;
	
	/** Clear the repository.
	*/
	@:overload public static function clearCache() : Void;
	
	/**
	* Add clazz to repository if there isn't an equally named class already in there.
	*
	* @return old entry in repository
	*/
	@:overload public static function addClass(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/**
	* Remove class with given (fully qualified) name from repository.
	*/
	@:overload public static function removeClass(clazz : String) : Void;
	
	/**
	* Remove given class from repository.
	*/
	@:overload public static function removeClass(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	/**
	* @return list of super classes of clazz in ascending order, i.e.,
	* Object is always the last element
	*/
	@:overload public static function getSuperClasses(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	/**
	* @return list of super classes of clazz in ascending order, i.e.,
	* Object is always the last element. return "null", if class
	* cannot be found.
	*/
	@:overload public static function getSuperClasses(class_name : String) : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	/**
	* @return all interfaces implemented by class and its super
	* classes and the interfaces that those interfaces extend, and so on.
	* (Some people call this a transitive hull).
	*/
	@:overload public static function getInterfaces(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	/**
	* @return all interfaces implemented by class and its super
	* classes and the interfaces that extend those interfaces, and so on
	*/
	@:overload public static function getInterfaces(class_name : String) : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	/**
	* Equivalent to runtime "instanceof" operator.
	* @return true, if clazz is an instance of super_class
	*/
	@:overload public static function instanceOf(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass, super_class : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Bool;
	
	/**
	* @return true, if clazz is an instance of super_class
	*/
	@:overload public static function instanceOf(clazz : String, super_class : String) : Bool;
	
	/**
	* @return true, if clazz is an instance of super_class
	*/
	@:overload public static function instanceOf(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass, super_class : String) : Bool;
	
	/**
	* @return true, if clazz is an instance of super_class
	*/
	@:overload public static function instanceOf(clazz : String, super_class : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Bool;
	
	/**
	* @return true, if clazz is an implementation of interface inter
	*/
	@:overload public static function implementationOf(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass, inter : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Bool;
	
	/**
	* @return true, if clazz is an implementation of interface inter
	*/
	@:overload public static function implementationOf(clazz : String, inter : String) : Bool;
	
	/**
	* @return true, if clazz is an implementation of interface inter
	*/
	@:overload public static function implementationOf(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass, inter : String) : Bool;
	
	/**
	* @return true, if clazz is an implementation of interface inter
	*/
	@:overload public static function implementationOf(clazz : String, inter : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Bool;
	
	
}

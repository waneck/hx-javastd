package java.lang;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Package implements java.lang.reflect.AnnotatedElement
{
	/**
	* Return the name of this package.
	*
	* @return  The fully-qualified name of this package as defined in section 6.5.3 of
	*          <cite>The Java&trade; Language Specification</cite>,
	*          for example, {@code java.lang}
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the title of the specification that this package implements.
	* @return the specification title, null is returned if it is not known.
	*/
	@:overload @:public public function getSpecificationTitle() : String;
	
	/**
	* Returns the version number of the specification
	* that this package implements.
	* This version string must be a sequence of nonnegative decimal
	* integers separated by "."'s and may have leading zeros.
	* When version strings are compared the most significant
	* numbers are compared.
	* @return the specification version, null is returned if it is not known.
	*/
	@:overload @:public public function getSpecificationVersion() : String;
	
	/**
	* Return the name of the organization, vendor,
	* or company that owns and maintains the specification
	* of the classes that implement this package.
	* @return the specification vendor, null is returned if it is not known.
	*/
	@:overload @:public public function getSpecificationVendor() : String;
	
	/**
	* Return the title of this package.
	* @return the title of the implementation, null is returned if it is not known.
	*/
	@:overload @:public public function getImplementationTitle() : String;
	
	/**
	* Return the version of this implementation. It consists of any string
	* assigned by the vendor of this implementation and does
	* not have any particular syntax specified or expected by the Java
	* runtime. It may be compared for equality with other
	* package version strings used for this implementation
	* by this vendor for this package.
	* @return the version of the implementation, null is returned if it is not known.
	*/
	@:overload @:public public function getImplementationVersion() : String;
	
	/**
	* Returns the name of the organization,
	* vendor or company that provided this implementation.
	* @return the vendor that implemented this package..
	*/
	@:overload @:public public function getImplementationVendor() : String;
	
	/**
	* Returns true if this package is sealed.
	*
	* @return true if the package is sealed, false otherwise
	*/
	@:overload @:public public function isSealed() : Bool;
	
	/**
	* Returns true if this package is sealed with respect to the specified
	* code source url.
	*
	* @param url the code source url
	* @return true if this package is sealed with respect to url
	*/
	@:overload @:public public function isSealed(url : java.net.URL) : Bool;
	
	/**
	* Compare this package's specification version with a
	* desired version. It returns true if
	* this packages specification version number is greater than or equal
	* to the desired version number. <p>
	*
	* Version numbers are compared by sequentially comparing corresponding
	* components of the desired and specification strings.
	* Each component is converted as a decimal integer and the values
	* compared.
	* If the specification value is greater than the desired
	* value true is returned. If the value is less false is returned.
	* If the values are equal the period is skipped and the next pair of
	* components is compared.
	*
	* @param desired the version string of the desired version.
	* @return true if this package's version number is greater
	*          than or equal to the desired version number
	*
	* @exception NumberFormatException if the desired or current version
	*          is not of the correct dotted form.
	*/
	@:overload @:public public function isCompatibleWith(desired : String) : Bool;
	
	/**
	* Find a package by name in the callers {@code ClassLoader} instance.
	* The callers {@code ClassLoader} instance is used to find the package
	* instance corresponding to the named class. If the callers
	* {@code ClassLoader} instance is null then the set of packages loaded
	* by the system {@code ClassLoader} instance is searched to find the
	* named package. <p>
	*
	* Packages have attributes for versions and specifications only if the class
	* loader created the package instance with the appropriate attributes. Typically,
	* those attributes are defined in the manifests that accompany the classes.
	*
	* @param name a package name, for example, java.lang.
	* @return the package of the requested name. It may be null if no package
	*          information is available from the archive or codebase.
	*/
	@:overload @:public @:static public static function getPackage(name : String) : java.lang.Package;
	
	/**
	* Get all the packages currently known for the caller's {@code ClassLoader}
	* instance.  Those packages correspond to classes loaded via or accessible by
	* name to that {@code ClassLoader} instance.  If the caller's
	* {@code ClassLoader} instance is the bootstrap {@code ClassLoader}
	* instance, which may be represented by {@code null} in some implementations,
	* only packages corresponding to classes loaded by the bootstrap
	* {@code ClassLoader} instance will be returned.
	*
	* @return a new array of packages known to the callers {@code ClassLoader}
	* instance.  An zero length array is returned if none are known.
	*/
	@:overload @:public @:static public static function getPackages() : java.NativeArray<java.lang.Package>;
	
	/**
	* Return the hash code computed from the package name.
	* @return the hash code computed from the package name.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the string representation of this Package.
	* Its value is the string "package " and the package name.
	* If the package title is defined it is appended.
	* If the package version is defined it is appended.
	* @return the string representation of the package.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getAnnotation<A : java.lang.annotation.Annotation>(annotationClass : Class<A>) : A;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isAnnotationPresent(annotationClass : Class<java.lang.annotation.Annotation>) : Bool;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getDeclaredAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	
}

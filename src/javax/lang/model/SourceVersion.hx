package javax.lang.model;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern enum SourceVersion
{
	/**
	* The original version.
	*
	* The language described in
	* <cite>The Java&trade; Language Specification, First Edition</cite>.
	*/
	RELEASE_0;
	/**
	* The version recognized by the Java Platform 1.1.
	*
	* The language is {@code RELEASE_0} augmented with nested classes as described in the 1.1 update to
	* <cite>The Java&trade; Language Specification, First Edition</cite>.
	*/
	RELEASE_1;
	/**
	* The version recognized by the Java 2 Platform, Standard Edition,
	* v 1.2.
	*
	* The language described in
	* <cite>The Java&trade; Language Specification,
	* Second Edition</cite>, which includes the {@code
	* strictfp} modifier.
	*/
	RELEASE_2;
	/**
	* The version recognized by the Java 2 Platform, Standard Edition,
	* v 1.3.
	*
	* No major changes from {@code RELEASE_2}.
	*/
	RELEASE_3;
	/**
	* The version recognized by the Java 2 Platform, Standard Edition,
	* v 1.4.
	*
	* Added a simple assertion facility.
	*/
	RELEASE_4;
	/**
	* The version recognized by the Java 2 Platform, Standard
	* Edition 5.0.
	*
	* The language described in
	* <cite>The Java&trade; Language Specification,
	* Third Edition</cite>.  First release to support
	* generics, annotations, autoboxing, var-args, enhanced {@code
	* for} loop, and hexadecimal floating-point literals.
	*/
	RELEASE_5;
	/**
	* The version recognized by the Java Platform, Standard Edition
	* 6.
	*
	* No major changes from {@code RELEASE_5}.
	*/
	RELEASE_6;
	/**
	* The version recognized by the Java Platform, Standard Edition
	* 7.
	*
	* @since 1.7
	*/
	RELEASE_7;
	
}


package com.sun.xml.internal.fastinfoset;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
/*
*
* This code is subject to the freebxml License, Version 1.1
*
* Copyright (c) 2001 - 2005 freebxml.org.  All rights reserved.
*
* $Header: /zpool01/javanet/scm/svn/tmp/cvs2svn/fi/FastInfoset/src/com/sun/xml/internal/fastinfoset/AbstractResourceBundle.java,v 1.3.2.4 2009-05-13 08:53:01 oleksiys Exp $
*/
extern class AbstractResourceBundle extends java.util.ResourceBundle
{
	/**
	* This class contains methods common to all *ResourceBundle classes
	*
	* @author FastInfoset team
	*/
	public static var LOCALE(default, null) : String;
	
	/**
	* Gets 'key' from ResourceBundle and format mesage using 'args'.
	*
	* @param key String key for message.
	* @param args Array of arguments for message.
	* @return String formatted message.
	*/
	@:overload public function getString(key : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Parse a locale string, return corresponding Locale instance.
	*
	* @param localeString
	* Name for the locale of interest.  If null, use VM default locale.
	* @return New Locale instance.
	*/
	@:overload public static function parseLocale(localeString : String) : java.util.Locale;
	
	/**
	* Subclasses of this class must implement this method so that the
	* correct resource bundle is passed to methods in this class
	*
	* @return
	*  A java.util.ResourceBundle from the subsclass. Methods in this class
	*  will use this reference.
	*/
	@:overload @:abstract public function getBundle() : java.util.ResourceBundle;
	
	/**
	* Since we are changing the ResourceBundle extension point, must
	* implement handleGetObject() using delegate getBundle().  Uses
	* getObject() call to work around protected access to
	* ResourceBundle.handleGetObject().  Happily, this means parent tree
	* of delegate bundle is searched for a match.
	*
	* Implements java.util.ResourceBundle.handleGetObject; inherits that
	* javadoc information.
	*
	* @see java.util.ResourceBundle#handleGetObject(String)
	*/
	@:overload override private function handleGetObject(key : String) : Dynamic;
	
	/**
	* Since we are changing the ResourceBundle extension point, must
	* implement getKeys() using delegate getBundle().
	*
	* Implements java.util.ResourceBundle.getKeys; inherits that javadoc
	* information.
	*
	* @see java.util.ResourceBundle#getKeys()
	*/
	@:overload @:final override public function getKeys() : java.util.Enumeration<Dynamic>;
	
	
}

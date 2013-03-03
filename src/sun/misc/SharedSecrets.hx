package sun.misc;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SharedSecrets
{
	@:overload @:public @:static public static function javaUtilJarAccess() : sun.misc.JavaUtilJarAccess;
	
	@:overload @:public @:static public static function setJavaUtilJarAccess(access : sun.misc.JavaUtilJarAccess) : Void;
	
	@:overload @:public @:static public static function setJavaLangAccess(jla : sun.misc.JavaLangAccess) : Void;
	
	@:overload @:public @:static public static function getJavaLangAccess() : sun.misc.JavaLangAccess;
	
	@:overload @:public @:static public static function setJavaNetAccess(jna : sun.misc.JavaNetAccess) : Void;
	
	@:overload @:public @:static public static function getJavaNetAccess() : sun.misc.JavaNetAccess;
	
	@:overload @:public @:static public static function setJavaNetHttpCookieAccess(a : sun.misc.JavaNetHttpCookieAccess) : Void;
	
	@:overload @:public @:static public static function getJavaNetHttpCookieAccess() : sun.misc.JavaNetHttpCookieAccess;
	
	@:overload @:public @:static public static function setJavaNioAccess(jna : sun.misc.JavaNioAccess) : Void;
	
	@:overload @:public @:static public static function getJavaNioAccess() : sun.misc.JavaNioAccess;
	
	@:overload @:public @:static public static function setJavaIOAccess(jia : sun.misc.JavaIOAccess) : Void;
	
	@:overload @:public @:static public static function getJavaIOAccess() : sun.misc.JavaIOAccess;
	
	@:overload @:public @:static public static function setJavaIOFileDescriptorAccess(jiofda : sun.misc.JavaIOFileDescriptorAccess) : Void;
	
	@:overload @:public @:static public static function getJavaIOFileDescriptorAccess() : sun.misc.JavaIOFileDescriptorAccess;
	
	@:overload @:public @:static public static function setJavaSecurityProtectionDomainAccess(jspda : sun.misc.JavaSecurityProtectionDomainAccess) : Void;
	
	@:overload @:public @:static public static function getJavaSecurityProtectionDomainAccess() : sun.misc.JavaSecurityProtectionDomainAccess;
	
	@:overload @:public @:static public static function setJavaSecurityAccess(jsa : sun.misc.JavaSecurityAccess) : Void;
	
	@:overload @:public @:static public static function getJavaSecurityAccess() : sun.misc.JavaSecurityAccess;
	
	@:overload @:public @:static public static function setJavaxSecurityAuthKerberosAccess(jsaka : sun.misc.JavaxSecurityAuthKerberosAccess) : Void;
	
	@:overload @:public @:static public static function getJavaxSecurityAuthKerberosAccess() : sun.misc.JavaxSecurityAuthKerberosAccess;
	
	@:overload @:public @:static public static function setJavaUtilZipAccess(access : sun.misc.JavaUtilZipAccess) : Void;
	
	@:overload @:public @:static public static function getJavaUtilZipAccess() : sun.misc.JavaUtilZipAccess;
	
	@:overload @:public @:static public static function setJavaAWTAccess(jaa : sun.misc.JavaAWTAccess) : Void;
	
	@:overload @:public @:static public static function getJavaAWTAccess() : sun.misc.JavaAWTAccess;
	
	
}

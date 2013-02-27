package javax.annotation;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The Generated annotation is used to mark source code that has been generated.
* It can also be used to differentiate user written code from generated code
* in a single file. When used, the value element must have the name of the
* code generator. The recommended convention is to use the fully qualified
* name of the code generator in the value field .
* For example: com.company.package.classname.
* The date element is used to indicate the date the source was generated.
* The date element must follow the ISO 8601 standard. For example the date
* element would have the following value 2001-07-04T12:08:56.235-0700
* which represents 2001-07-04 12:08:56 local time in the U.S. Pacific
* Time time zone.
* The comment element is a place holder for any comments that the code
* generator may want to include in the generated code.
*
* @since Common Annotations 1.0
*/
@:require(java0) extern interface Generated
{
	
}

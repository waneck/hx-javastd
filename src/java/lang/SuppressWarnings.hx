package java.lang;
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
*/
/**
* Indicates that the named compiler warnings should be suppressed in the
* annotated element (and in all program elements contained in the annotated
* element).  Note that the set of warnings suppressed in a given element is
* a superset of the warnings suppressed in all containing elements.  For
* example, if you annotate a class to suppress one warning and annotate a
* method to suppress another, both warnings will be suppressed in the method.
*
* <p>As a matter of style, programmers should always use this annotation
* on the most deeply nested element where it is effective.  If you want to
* suppress a warning in a particular method, you should annotate that
* method rather than its class.
*
* @since 1.5
* @author Josh Bloch
*/
@:require(java5) extern interface SuppressWarnings
{
	
}

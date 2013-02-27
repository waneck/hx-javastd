package java.util;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Formattable
{
	/**
	* Formats the object using the provided {@link Formatter formatter}.
	*
	* @param  formatter
	*         The {@link Formatter formatter}.  Implementing classes may call
	*         {@link Formatter#out() formatter.out()} or {@link
	*         Formatter#locale() formatter.locale()} to obtain the {@link
	*         Appendable} or {@link Locale} used by this
	*         <tt>formatter</tt> respectively.
	*
	* @param  flags
	*         The flags modify the output format.  The value is interpreted as
	*         a bitmask.  Any combination of the following flags may be set:
	*         {@link FormattableFlags#LEFT_JUSTIFY}, {@link
	*         FormattableFlags#UPPERCASE}, and {@link
	*         FormattableFlags#ALTERNATE}.  If no flags are set, the default
	*         formatting of the implementing class will apply.
	*
	* @param  width
	*         The minimum number of characters to be written to the output.
	*         If the length of the converted value is less than the
	*         <tt>width</tt> then the output will be padded by
	*         <tt>'&nbsp;&nbsp;'</tt> until the total number of characters
	*         equals width.  The padding is at the beginning by default.  If
	*         the {@link FormattableFlags#LEFT_JUSTIFY} flag is set then the
	*         padding will be at the end.  If <tt>width</tt> is <tt>-1</tt>
	*         then there is no minimum.
	*
	* @param  precision
	*         The maximum number of characters to be written to the output.
	*         The precision is applied before the width, thus the output will
	*         be truncated to <tt>precision</tt> characters even if the
	*         <tt>width</tt> is greater than the <tt>precision</tt>.  If
	*         <tt>precision</tt> is <tt>-1</tt> then there is no explicit
	*         limit on the number of characters.
	*
	* @throws  IllegalFormatException
	*          If any of the parameters are invalid.  For specification of all
	*          possible formatting errors, see the <a
	*          href="../util/Formatter.html#detail">Details</a> section of the
	*          formatter class specification.
	*/
	@:overload public function formatTo(formatter : java.util.Formatter, flags : Int, width : Int, precision : Int) : Void;
	
	
}

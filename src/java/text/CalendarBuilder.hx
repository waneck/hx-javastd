package java.text;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
* {@code CalendarBuilder} keeps field-value pairs for setting
* the calendar fields of the given {@code Calendar}. It has the
* {@link Calendar#FIELD_COUNT FIELD_COUNT}-th field for the week year
* support. Also {@code ISO_DAY_OF_WEEK} is used to specify
* {@code DAY_OF_WEEK} in the ISO day of week numbering.
*
* <p>{@code CalendarBuilder} retains the semantic of the pseudo
* timestamp for fields. {@code CalendarBuilder} uses a single
* int array combining fields[] and stamp[] of {@code Calendar}.
*
* @author Masayoshi Okutsu
*/
@:internal extern class CalendarBuilder
{
	public static var WEEK_YEAR(default, null) : Int;
	
	public static var ISO_DAY_OF_WEEK(default, null) : Int;
	
	@:overload public function toString() : String;
	
	
}

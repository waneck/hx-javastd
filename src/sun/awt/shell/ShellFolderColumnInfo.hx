package sun.awt.shell;
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
extern class ShellFolderColumnInfo
{
	@:overload @:public public function new(title : String, width : Null<Int>, alignment : Null<Int>, visible : Bool, sortOrder : javax.swing.SortOrder, comparator : java.util.Comparator<Dynamic>, compareByColumn : Bool) : Void;
	
	@:overload @:public public function new(title : String, width : Null<Int>, alignment : Null<Int>, visible : Bool, sortOrder : javax.swing.SortOrder, comparator : java.util.Comparator<Dynamic>) : Void;
	
	/**
	* This constructor is used by native code when getting column set for
	* a folder under Windows
	*/
	@:overload @:public public function new(title : String, width : Int, alignment : Int, visible : Bool) : Void;
	
	@:overload @:public public function getTitle() : String;
	
	@:overload @:public public function setTitle(title : String) : Void;
	
	@:overload @:public public function getWidth() : Null<Int>;
	
	@:overload @:public public function setWidth(width : Null<Int>) : Void;
	
	@:overload @:public public function getAlignment() : Null<Int>;
	
	@:overload @:public public function setAlignment(alignment : Null<Int>) : Void;
	
	@:overload @:public public function isVisible() : Bool;
	
	@:overload @:public public function setVisible(visible : Bool) : Void;
	
	@:overload @:public public function getSortOrder() : javax.swing.SortOrder;
	
	@:overload @:public public function setSortOrder(sortOrder : javax.swing.SortOrder) : Void;
	
	@:overload @:public public function getComparator() : java.util.Comparator<Dynamic>;
	
	@:overload @:public public function setComparator(comparator : java.util.Comparator<Dynamic>) : Void;
	
	@:overload @:public public function isCompareByColumn() : Bool;
	
	@:overload @:public public function setCompareByColumn(compareByColumn : Bool) : Void;
	
	
}

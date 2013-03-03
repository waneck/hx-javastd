package javax.swing.table;
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
extern class TableRowSorter<M> extends javax.swing.DefaultRowSorter<M, Null<Int>>
{
	/**
	* Creates a <code>TableRowSorter</code> with an empty model.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>TableRowSorter</code> using <code>model</code>
	* as the underlying <code>TableModel</code>.
	*
	* @param model the underlying <code>TableModel</code> to use,
	*        <code>null</code> is treated as an empty model
	*/
	@:overload @:public public function new(model : M) : Void;
	
	/**
	* Sets the <code>TableModel</code> to use as the underlying model
	* for this <code>TableRowSorter</code>.  A value of <code>null</code>
	* can be used to set an empty model.
	*
	* @param model the underlying model to use, or <code>null</code>
	*/
	@:overload @:public public function setModel(model : M) : Void;
	
	/**
	* Sets the object responsible for converting values from the
	* model to strings.  If non-<code>null</code> this
	* is used to convert any object values, that do not have a
	* registered <code>Comparator</code>, to strings.
	*
	* @param stringConverter the object responsible for converting values
	*        from the model to strings
	*/
	@:overload @:public public function setStringConverter(stringConverter : javax.swing.table.TableStringConverter) : Void;
	
	/**
	* Returns the object responsible for converting values from the
	* model to strings.
	*
	* @return object responsible for converting values to strings.
	*/
	@:overload @:public public function getStringConverter() : javax.swing.table.TableStringConverter;
	
	/**
	* Returns the <code>Comparator</code> for the specified
	* column.  If a <code>Comparator</code> has not been specified using
	* the <code>setComparator</code> method a <code>Comparator</code>
	* will be returned based on the column class
	* (<code>TableModel.getColumnClass</code>) of the specified column.
	* If the column class is <code>String</code>,
	* <code>Collator.getInstance</code> is returned.  If the
	* column class implements <code>Comparable</code> a private
	* <code>Comparator</code> is returned that invokes the
	* <code>compareTo</code> method.  Otherwise
	* <code>Collator.getInstance</code> is returned.
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:public override public function getComparator(column : Int) : java.util.Comparator<Dynamic>;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:protected override private function useToString(column : Int) : Bool;
	
	
}
/**
* Implementation of DefaultRowSorter.ModelWrapper that delegates to a
* TableModel.
*/
@:native('javax$swing$table$TableRowSorter$TableRowSorterModelWrapper') @:internal extern class TableRowSorter_TableRowSorterModelWrapper extends javax.swing.DefaultRowSorter.DefaultRowSorter_ModelWrapper<Dynamic, Null<Int>>
{
	@:overload @:public override public function getModel() : Dynamic;
	
	@:overload @:public override public function getColumnCount() : Int;
	
	@:overload @:public override public function getRowCount() : Int;
	
	@:overload @:public override public function getValueAt(row : Int, column : Int) : Dynamic;
	
	@:overload @:public override public function getStringValueAt(row : Int, column : Int) : String;
	
	@:overload @:public override public function getIdentifier(index : Int) : Null<Int>;
	
	
}
@:native('javax$swing$table$TableRowSorter$ComparableComparator') @:internal extern class TableRowSorter_ComparableComparator implements java.util.Comparator<Dynamic>
{
	@:overload @:public public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}

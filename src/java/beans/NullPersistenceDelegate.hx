package java.beans;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NullPersistenceDelegate extends java.beans.PersistenceDelegate
{
	/*
	* Like the <code>Intropector</code>, the <code>MetaData</code> class
	* contains <em>meta</em> objects that describe the way
	* classes should express their state in terms of their
	* own public APIs.
	*
	* @see java.beans.Intropector
	*
	* @author Philip Milne
	* @author Steve Langley
	*/
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	@:overload @:public override public function writeObject(oldInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class EnumPersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for <CODE>enum</CODE> classes.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class PrimitivePersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class ArrayPersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class ProxyPersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_lang_String_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	@:overload @:public override public function writeObject(oldInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_lang_Class_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_lang_reflect_Field_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_lang_reflect_Method_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_util_Date_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for <CODE>java.util.Date</CODE> classes.
	* Do not extend DefaultPersistenceDelegate to improve performance and
	* to avoid problems with <CODE>java.sql.Date</CODE>,
	* <CODE>java.sql.Time</CODE> and <CODE>java.sql.Timestamp</CODE>.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_sql_Timestamp_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Date_PersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_util_Collections extends java.beans.PersistenceDelegate
{
	/**
	* The base class for persistence delegates for inner classes
	* that can be created using {@link Collections}.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	
}
@:native('java$beans$java_util_Collections$EmptyList_PersistenceDelegate') @:internal extern class java_util_Collections_EmptyList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$EmptySet_PersistenceDelegate') @:internal extern class java_util_Collections_EmptySet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$EmptyMap_PersistenceDelegate') @:internal extern class java_util_Collections_EmptyMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SingletonList_PersistenceDelegate') @:internal extern class java_util_Collections_SingletonList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SingletonSet_PersistenceDelegate') @:internal extern class java_util_Collections_SingletonSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SingletonMap_PersistenceDelegate') @:internal extern class java_util_Collections_SingletonMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableCollection_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableCollection_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableList_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableRandomAccessList_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableRandomAccessList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableSet_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableSortedSet_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableSortedSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableMap_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$UnmodifiableSortedMap_PersistenceDelegate') @:internal extern class java_util_Collections_UnmodifiableSortedMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedCollection_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedCollection_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedList_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedRandomAccessList_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedRandomAccessList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedSet_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedSortedSet_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedSortedSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedMap_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$SynchronizedSortedMap_PersistenceDelegate') @:internal extern class java_util_Collections_SynchronizedSortedMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedCollection_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedCollection_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedList_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedRandomAccessList_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedRandomAccessList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedSet_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedSortedSet_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedSortedSet_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedMap_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:native('java$beans$java_util_Collections$CheckedSortedMap_PersistenceDelegate') @:internal extern class java_util_Collections_CheckedSortedMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collections
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_util_EnumMap_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for <CODE>java.util.EnumMap</CODE> classes.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_util_EnumSet_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for <CODE>java.util.EnumSet</CODE> classes.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_util_Collection_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_util_List_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_util_Map_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_util_AbstractCollection_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collection_PersistenceDelegate
{
	
}
@:internal extern class java_util_AbstractList_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_List_PersistenceDelegate
{
	
}
@:internal extern class java_util_AbstractMap_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Map_PersistenceDelegate
{
	
}
@:internal extern class java_util_Hashtable_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Map_PersistenceDelegate
{
	
}
@:internal extern class java_beans_beancontext_BeanContextSupport_PersistenceDelegate extends java.beans.NullPersistenceDelegate.java_util_Collection_PersistenceDelegate
{
	
}
@:internal extern class java_awt_Insets_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for {@link Insets}.
	* It is impossible to use {@link DefaultPersistenceDelegate}
	* because this class does not have any properties.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_awt_Font_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for {@link Font}.
	* It is impossible to use {@link DefaultPersistenceDelegate}
	* because size of the font can be float value.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_awt_AWTKeyStroke_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for {@link AWTKeyStroke}.
	* It is impossible to use {@link DefaultPersistenceDelegate}
	* because this class have no public constructor.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class StaticFieldsPersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected private function installFields(out : java.beans.Encoder, cls : Class<Dynamic>) : Void;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	@:overload @:public override public function writeObject(oldInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_SystemColor_PersistenceDelegate extends java.beans.NullPersistenceDelegate.StaticFieldsPersistenceDelegate
{
	
}
@:internal extern class java_awt_font_TextAttribute_PersistenceDelegate extends java.beans.NullPersistenceDelegate.StaticFieldsPersistenceDelegate
{
	
}
@:internal extern class java_awt_MenuShortcut_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class java_awt_Component_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_Container_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_Choice_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_Menu_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_MenuBar_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_List_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_BorderLayout_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_CardLayout_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class java_awt_GridBagLayout_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_JFrame_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_DefaultListModel_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_DefaultComboBoxModel_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_tree_DefaultMutableTreeNode_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_ToolTipManager_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class javax_swing_JTabbedPane_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_Box_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class javax_swing_JMenu_PersistenceDelegate extends java.beans.DefaultPersistenceDelegate
{
	@:overload @:protected override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
@:internal extern class javax_swing_border_MatteBorder_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for {@link MatteBorder}.
	* It is impossible to use {@link DefaultPersistenceDelegate}
	* because this class does not have writable properties.
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class sun_swing_PrintColorUIResource_PersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* The persistence delegate for {@link PrintColorUIResource}.
	* It is impossible to use {@link DefaultPersistenceDelegate}
	* because this class has special rule for serialization:
	* it should be converted to {@link ColorUIResource}.
	*
	* @see PrintColorUIResource#writeReplace
	*
	* @author Sergey A. Malenkov
	*/
	@:overload @:protected override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	@:overload @:protected override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	
}
@:internal extern class MetaData
{
	@:overload @:public @:synchronized @:static public static function getPersistenceDelegate(type : Class<Dynamic>) : java.beans.PersistenceDelegate;
	
	
}

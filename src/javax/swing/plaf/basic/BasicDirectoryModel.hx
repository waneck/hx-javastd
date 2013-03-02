package javax.swing.plaf.basic;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicDirectoryModel extends javax.swing.AbstractListModel<Dynamic> implements java.beans.PropertyChangeListener
{
	@:overload public function new(filechooser : javax.swing.JFileChooser) : Void;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* This method is used to interrupt file loading thread.
	*/
	@:overload public function invalidateFileCache() : Void;
	
	@:overload public function getDirectories() : java.util.Vector<java.io.File>;
	
	@:overload public function getFiles() : java.util.Vector<java.io.File>;
	
	@:overload public function validateFileCache() : Void;
	
	/**
	* Renames a file in the underlying file system.
	*
	* @param oldFile a <code>File</code> object representing
	*        the existing file
	* @param newFile a <code>File</code> object representing
	*        the desired new file name
	* @return <code>true</code> if rename succeeded,
	*        otherwise <code>false</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function renameFile(oldFile : java.io.File, newFile : java.io.File) : Bool;
	
	@:overload public function fireContentsChanged() : Void;
	
	@:overload public function getSize() : Int;
	
	@:overload public function contains(o : Dynamic) : Bool;
	
	@:overload public function indexOf(o : Dynamic) : Int;
	
	@:overload public function getElementAt(index : Int) : Dynamic;
	
	/**
	* Obsolete - not used.
	*/
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	/**
	* Obsolete - not used.
	*/
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload private function sort(v : java.util.Vector<java.io.File>) : Void;
	
	@:overload private function lt(a : java.io.File, b : java.io.File) : Bool;
	
	/**
	* Adds a PropertyChangeListener to the listener list. The listener is
	* registered for all bound properties of this class.
	* <p>
	* If <code>listener</code> is <code>null</code>,
	* no exception is thrown and no action is performed.
	*
	* @param    listener  the property change listener to be added
	*
	* @see #removePropertyChangeListener
	* @see #getPropertyChangeListeners
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a PropertyChangeListener from the listener list.
	* <p>
	* If listener is null, no exception is thrown and no action is performed.
	*
	* @param listener the PropertyChangeListener to be removed
	*
	* @see #addPropertyChangeListener
	* @see #getPropertyChangeListeners
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the property change listeners
	* registered on this component.
	*
	* @return all of this component's <code>PropertyChangeListener</code>s
	*         or an empty array if no property change
	*         listeners are currently registered
	*
	* @see      #addPropertyChangeListener
	* @see      #removePropertyChangeListener
	* @see      java.beans.PropertyChangeSupport#getPropertyChangeListeners
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Support for reporting bound property changes for boolean properties.
	* This method can be called when a bound property has changed and it will
	* send the appropriate PropertyChangeEvent to any registered
	* PropertyChangeListeners.
	*
	* @param propertyName the property whose value has changed
	* @param oldValue the property's previous value
	* @param newValue the property's new value
	*
	* @since 1.6
	*/
	@:require(java6) @:overload private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicDirectoryModel$LoadFilesThread') @:internal extern class BasicDirectoryModel_LoadFilesThread extends java.lang.Thread
{
	@:overload public function new(currentDirectory : java.io.File, fid : Int) : Void;
	
	@:overload override public function run() : Void;
	
	@:overload public function run0() : Void;
	
	@:overload public function cancelRunnables(runnables : java.util.Vector<javax.swing.plaf.basic.BasicDirectoryModel.BasicDirectoryModel_DoChangeContents>) : Void;
	
	@:overload public function cancelRunnables() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicDirectoryModel$DoChangeContents') @:internal extern class BasicDirectoryModel_DoChangeContents implements java.lang.Runnable
{
	@:overload public function new(addFiles : java.util.List<java.io.File>, addStart : Int, remFiles : java.util.List<java.io.File>, remStart : Int, fid : Int) : Void;
	
	@:overload @:synchronized public function run() : Void;
	
	
}

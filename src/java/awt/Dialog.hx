package java.awt;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Dialog extends java.awt.Window
{
	/**
	* Default modality type for modal dialogs. The default modality type is
	* <code>APPLICATION_MODAL</code>. Calling the oldstyle <code>setModal(true)</code>
	* is equal to <code>setModalityType(DEFAULT_MODALITY_TYPE)</code>.
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog#setModal
	*
	* @since 1.6
	*/
	@:require(java6) public static var DEFAULT_MODALITY_TYPE(default, null) : Dialog_ModalityType;
	
	/**
	* Constructs an initially invisible, modeless <code>Dialog</code> with
	* the specified owner <code>Frame</code> and an empty title.
	*
	* @param owner the owner of the dialog or <code>null</code> if
	*     this dialog has no owner
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*    <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*    <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	*/
	@:overload public function new(owner : java.awt.Frame) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the specified
	* owner <code>Frame</code> and modality and an empty title.
	*
	* @param owner the owner of the dialog or <code>null</code> if
	*     this dialog has no owner
	* @param modal specifes whether dialog blocks user input to other top-level
	*     windows when shown. If <code>false</code>, the dialog is <code>MODELESS</code>;
	*     if <code>true</code>, the modality type property is set to
	*     <code>DEFAULT_MODALITY_TYPE</code>
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*    <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog.ModalityType#MODELESS
	* @see java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(owner : java.awt.Frame, modal : Bool) : Void;
	
	/**
	* Constructs an initially invisible, modeless <code>Dialog</code> with
	* the specified owner <code>Frame</code> and title.
	*
	* @param owner the owner of the dialog or <code>null</code> if
	*     this dialog has no owner
	* @param title the title of the dialog or <code>null</code> if this dialog
	*     has no title
	* @exception IllegalArgumentException if the <code>owner</code>'s
	*     <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	*/
	@:overload public function new(owner : java.awt.Frame, title : String) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the
	* specified owner <code>Frame</code>, title and modality.
	*
	* @param owner the owner of the dialog or <code>null</code> if
	*     this dialog has no owner
	* @param title the title of the dialog or <code>null</code> if this dialog
	*     has no title
	* @param modal specifes whether dialog blocks user input to other top-level
	*     windows when shown. If <code>false</code>, the dialog is <code>MODELESS</code>;
	*     if <code>true</code>, the modality type property is set to
	*     <code>DEFAULT_MODALITY_TYPE</code>
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*    <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*    <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog.ModalityType#MODELESS
	* @see java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	*/
	@:overload public function new(owner : java.awt.Frame, title : String, modal : Bool) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the specified owner
	* <code>Frame</code>, title, modality, and <code>GraphicsConfiguration</code>.
	* @param owner the owner of the dialog or <code>null</code> if this dialog
	*     has no owner
	* @param title the title of the dialog or <code>null</code> if this dialog
	*     has no title
	* @param modal specifes whether dialog blocks user input to other top-level
	*     windows when shown. If <code>false</code>, the dialog is <code>MODELESS</code>;
	*     if <code>true</code>, the modality type property is set to
	*     <code>DEFAULT_MODALITY_TYPE</code>
	* @param gc the <code>GraphicsConfiguration</code> of the target screen device;
	*     if <code>null</code>, the default system <code>GraphicsConfiguration</code>
	*     is assumed
	* @exception java.lang.IllegalArgumentException if <code>gc</code>
	*     is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog.ModalityType#MODELESS
	* @see java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(owner : java.awt.Frame, title : String, modal : Bool, gc : java.awt.GraphicsConfiguration) : Void;
	
	/**
	* Constructs an initially invisible, modeless <code>Dialog</code> with
	* the specified owner <code>Dialog</code> and an empty title.
	*
	* @param owner the owner of the dialog or <code>null</code> if this
	*     dialog has no owner
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*     <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(owner : Dialog) : Void;
	
	/**
	* Constructs an initially invisible, modeless <code>Dialog</code>
	* with the specified owner <code>Dialog</code> and title.
	*
	* @param owner the owner of the dialog or <code>null</code> if this
	*     has no owner
	* @param title the title of the dialog or <code>null</code> if this dialog
	*     has no title
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*     <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(owner : Dialog, title : String) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the
	* specified owner <code>Dialog</code>, title, and modality.
	*
	* @param owner the owner of the dialog or <code>null</code> if this
	*     dialog has no owner
	* @param title the title of the dialog or <code>null</code> if this
	*     dialog has no title
	* @param modal specifes whether dialog blocks user input to other top-level
	*     windows when shown. If <code>false</code>, the dialog is <code>MODELESS</code>;
	*     if <code>true</code>, the modality type property is set to
	*     <code>DEFAULT_MODALITY_TYPE</code>
	* @exception IllegalArgumentException if the <code>owner</code>'s
	*    <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*    <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog.ModalityType#MODELESS
	* @see java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(owner : Dialog, title : String, modal : Bool) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the
	* specified owner <code>Dialog</code>, title, modality and
	* <code>GraphicsConfiguration</code>.
	*
	* @param owner the owner of the dialog or <code>null</code> if this
	*     dialog has no owner
	* @param title the title of the dialog or <code>null</code> if this
	*     dialog has no title
	* @param modal specifes whether dialog blocks user input to other top-level
	*     windows when shown. If <code>false</code>, the dialog is <code>MODELESS</code>;
	*     if <code>true</code>, the modality type property is set to
	*     <code>DEFAULT_MODALITY_TYPE</code>
	* @param gc the <code>GraphicsConfiguration</code> of the target screen device;
	*     if <code>null</code>, the default system <code>GraphicsConfiguration</code>
	*     is assumed
	* @exception java.lang.IllegalArgumentException if <code>gc</code>
	*    is not from a screen device
	* @exception HeadlessException when
	*    <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog.ModalityType#MODELESS
	* @see java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(owner : Dialog, title : String, modal : Bool, gc : java.awt.GraphicsConfiguration) : Void;
	
	/**
	* Constructs an initially invisible, modeless <code>Dialog</code> with the
	* specified owner <code>Window</code> and an empty title.
	*
	* @param owner the owner of the dialog. The owner must be an instance of
	*     {@link java.awt.Dialog Dialog}, {@link java.awt.Frame Frame}, any
	*     of their descendents or <code>null</code>
	*
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>
	*     is not an instance of {@link java.awt.Dialog Dialog} or {@link
	*     java.awt.Frame Frame}
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*     <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(owner : java.awt.Window) : Void;
	
	/**
	* Constructs an initially invisible, modeless <code>Dialog</code> with
	* the specified owner <code>Window</code> and title.
	*
	* @param owner the owner of the dialog. The owner must be an instance of
	*    {@link java.awt.Dialog Dialog}, {@link java.awt.Frame Frame}, any
	*    of their descendents or <code>null</code>
	* @param title the title of the dialog or <code>null</code> if this dialog
	*    has no title
	*
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>
	*    is not an instance of {@link java.awt.Dialog Dialog} or {@link
	*    java.awt.Frame Frame}
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*    <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*    <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(owner : java.awt.Window, title : String) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the
	* specified owner <code>Window</code> and modality and an empty title.
	*
	* @param owner the owner of the dialog. The owner must be an instance of
	*    {@link java.awt.Dialog Dialog}, {@link java.awt.Frame Frame}, any
	*    of their descendents or <code>null</code>
	* @param modalityType specifies whether dialog blocks input to other
	*    windows when shown. <code>null</code> value and unsupported modality
	*    types are equivalent to <code>MODELESS</code>
	*
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>
	*    is not an instance of {@link java.awt.Dialog Dialog} or {@link
	*    java.awt.Frame Frame}
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*    <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*    <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @exception SecurityException if the calling thread does not have permission
	*    to create modal dialogs with the given <code>modalityType</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see java.awt.Toolkit#isModalityTypeSupported
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(owner : java.awt.Window, modalityType : Dialog_ModalityType) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the
	* specified owner <code>Window</code>, title and modality.
	*
	* @param owner the owner of the dialog. The owner must be an instance of
	*     {@link java.awt.Dialog Dialog}, {@link java.awt.Frame Frame}, any
	*     of their descendents or <code>null</code>
	* @param title the title of the dialog or <code>null</code> if this dialog
	*     has no title
	* @param modalityType specifies whether dialog blocks input to other
	*    windows when shown. <code>null</code> value and unsupported modality
	*    types are equivalent to <code>MODELESS</code>
	*
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>
	*     is not an instance of {@link java.awt.Dialog Dialog} or {@link
	*     java.awt.Frame Frame}
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>'s
	*     <code>GraphicsConfiguration</code> is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @exception SecurityException if the calling thread does not have permission
	*     to create modal dialogs with the given <code>modalityType</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see java.awt.Toolkit#isModalityTypeSupported
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(owner : java.awt.Window, title : String, modalityType : Dialog_ModalityType) : Void;
	
	/**
	* Constructs an initially invisible <code>Dialog</code> with the
	* specified owner <code>Window</code>, title, modality and
	* <code>GraphicsConfiguration</code>.
	*
	* @param owner the owner of the dialog. The owner must be an instance of
	*     {@link java.awt.Dialog Dialog}, {@link java.awt.Frame Frame}, any
	*     of their descendents or <code>null</code>
	* @param title the title of the dialog or <code>null</code> if this dialog
	*     has no title
	* @param modalityType specifies whether dialog blocks input to other
	*    windows when shown. <code>null</code> value and unsupported modality
	*    types are equivalent to <code>MODELESS</code>
	* @param gc the <code>GraphicsConfiguration</code> of the target screen device;
	*     if <code>null</code>, the default system <code>GraphicsConfiguration</code>
	*     is assumed
	*
	* @exception java.lang.IllegalArgumentException if the <code>owner</code>
	*     is not an instance of {@link java.awt.Dialog Dialog} or {@link
	*     java.awt.Frame Frame}
	* @exception java.lang.IllegalArgumentException if <code>gc</code>
	*     is not from a screen device
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @exception SecurityException if the calling thread does not have permission
	*     to create modal dialogs with the given <code>modalityType</code>
	*
	* @see java.awt.Dialog.ModalityType
	* @see java.awt.Dialog#setModal
	* @see java.awt.Dialog#setModalityType
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see java.awt.Toolkit#isModalityTypeSupported
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(owner : java.awt.Window, title : String, modalityType : Dialog_ModalityType, gc : java.awt.GraphicsConfiguration) : Void;
	
	/**
	* Makes this Dialog displayable by connecting it to
	* a native screen resource.  Making a dialog displayable will
	* cause any of its children to be made displayable.
	* This method is called internally by the toolkit and should
	* not be called directly by programs.
	* @see Component#isDisplayable
	* @see #removeNotify
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Indicates whether the dialog is modal.
	* <p>
	* This method is obsolete and is kept for backwards compatiblity only.
	* Use {@link #getModalityType getModalityType()} instead.
	*
	* @return    <code>true</code> if this dialog window is modal;
	*            <code>false</code> otherwise
	*
	* @see       java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see       java.awt.Dialog.ModalityType#MODELESS
	* @see       java.awt.Dialog#setModal
	* @see       java.awt.Dialog#getModalityType
	* @see       java.awt.Dialog#setModalityType
	*/
	@:overload public function isModal() : Bool;
	
	/**
	* Specifies whether this dialog should be modal.
	* <p>
	* This method is obsolete and is kept for backwards compatibility only.
	* Use {@link #setModalityType setModalityType()} instead.
	* <p>
	* Note: changing modality of the visible dialog may have no effect
	* until it is hidden and then shown again.
	*
	* @param modal specifies whether dialog blocks input to other windows
	*     when shown; calling to <code>setModal(true)</code> is equivalent to
	*     <code>setModalityType(Dialog.DEFAULT_MODALITY_TYPE)</code>, and
	*     calling to <code>setModal(false)</code> is equvivalent to
	*     <code>setModalityType(Dialog.ModalityType.MODELESS)</code>
	*
	* @see       java.awt.Dialog#DEFAULT_MODALITY_TYPE
	* @see       java.awt.Dialog.ModalityType#MODELESS
	* @see       java.awt.Dialog#isModal
	* @see       java.awt.Dialog#getModalityType
	* @see       java.awt.Dialog#setModalityType
	*
	* @since     1.1
	*/
	@:require(java1) @:overload public function setModal(modal : Bool) : Void;
	
	/**
	* Returns the modality type of this dialog.
	*
	* @return modality type of this dialog
	*
	* @see java.awt.Dialog#setModalityType
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getModalityType() : Dialog_ModalityType;
	
	/**
	* Sets the modality type for this dialog. See {@link
	* java.awt.Dialog.ModalityType ModalityType} for possible modality types.
	* <p>
	* If the given modality type is not supported, <code>MODELESS</code>
	* is used. You may want to call <code>getModalityType()</code> after calling
	* this method to ensure that the modality type has been set.
	* <p>
	* Note: changing modality of the visible dialog may have no effect
	* until it is hidden and then shown again.
	*
	* @param type specifies whether dialog blocks input to other
	*     windows when shown. <code>null</code> value and unsupported modality
	*     types are equivalent to <code>MODELESS</code>
	* @exception SecurityException if the calling thread does not have permission
	*     to create modal dialogs with the given <code>modalityType</code>
	*
	* @see       java.awt.Dialog#getModalityType
	* @see       java.awt.Toolkit#isModalityTypeSupported
	*
	* @since     1.6
	*/
	@:require(java6) @:overload public function setModalityType(type : Dialog_ModalityType) : Void;
	
	/**
	* Gets the title of the dialog. The title is displayed in the
	* dialog's border.
	* @return    the title of this dialog window. The title may be
	*            <code>null</code>.
	* @see       java.awt.Dialog#setTitle
	*/
	@:overload public function getTitle() : String;
	
	/**
	* Sets the title of the Dialog.
	* @param title the title displayed in the dialog's border;
	* a null value results in an empty title
	* @see #getTitle
	*/
	@:overload public function setTitle(title : String) : Void;
	
	/**
	* Shows or hides this {@code Dialog} depending on the value of parameter
	* {@code b}.
	* @param b if {@code true}, makes the {@code Dialog} visible,
	* otherwise hides the {@code Dialog}.
	* If the dialog and/or its owner
	* are not yet displayable, both are made displayable.  The
	* dialog will be validated prior to being made visible.
	* If {@code false}, hides the {@code Dialog} and then causes {@code setVisible(true)}
	* to return if it is currently blocked.
	* <p>
	* <b>Notes for modal dialogs</b>.
	* <ul>
	* <li>{@code setVisible(true)}:  If the dialog is not already
	* visible, this call will not return until the dialog is
	* hidden by calling {@code setVisible(false)} or
	* {@code dispose}.
	* <li>{@code setVisible(false)}:  Hides the dialog and then
	* returns on {@code setVisible(true)} if it is currently blocked.
	* <li>It is OK to call this method from the event dispatching
	* thread because the toolkit ensures that other events are
	* not blocked while this method is blocked.
	* </ul>
	* @see java.awt.Window#setVisible
	* @see java.awt.Window#dispose
	* @see java.awt.Component#isDisplayable
	* @see java.awt.Component#validate
	* @see java.awt.Dialog#isModal
	*/
	@:overload override public function setVisible(b : Bool) : Void;
	
	/**
	* Makes the {@code Dialog} visible. If the dialog and/or its owner
	* are not yet displayable, both are made displayable.  The
	* dialog will be validated prior to being made visible.
	* If the dialog is already visible, this will bring the dialog
	* to the front.
	* <p>
	* If the dialog is modal and is not already visible, this call
	* will not return until the dialog is hidden by calling hide or
	* dispose. It is permissible to show modal dialogs from the event
	* dispatching thread because the toolkit will ensure that another
	* event pump runs while the one which invoked this method is blocked.
	* @see Component#hide
	* @see Component#isDisplayable
	* @see Component#validate
	* @see #isModal
	* @see Window#setVisible(boolean)
	* @deprecated As of JDK version 1.5, replaced by
	* {@link #setVisible(boolean) setVisible(boolean)}.
	*/
	@:overload override public function show() : Void;
	
	/**
	* Hides the Dialog and then causes {@code show} to return if it is currently
	* blocked.
	* @see Window#show
	* @see Window#dispose
	* @see Window#setVisible(boolean)
	* @deprecated As of JDK version 1.5, replaced by
	* {@link #setVisible(boolean) setVisible(boolean)}.
	*/
	@:overload override public function hide() : Void;
	
	/**
	* {@inheritDoc}
	* <p>
	* If this dialog is modal and blocks some windows, then all of them are
	* also sent to the back to keep them below the blocking dialog.
	*
	* @see java.awt.Window#toBack
	*/
	@:overload override public function toBack() : Void;
	
	/**
	* Indicates whether this dialog is resizable by the user.
	* By default, all dialogs are initially resizable.
	* @return    <code>true</code> if the user can resize the dialog;
	*            <code>false</code> otherwise.
	* @see       java.awt.Dialog#setResizable
	*/
	@:overload public function isResizable() : Bool;
	
	/**
	* Sets whether this dialog is resizable by the user.
	* @param     resizable <code>true</code> if the user can
	*                 resize this dialog; <code>false</code> otherwise.
	* @see       java.awt.Dialog#isResizable
	*/
	@:overload public function setResizable(resizable : Bool) : Void;
	
	/**
	* Disables or enables decorations for this dialog.
	* <p>
	* This method can only be called while the dialog is not displayable. To
	* make this dialog decorated, it must be opaque and have the default shape,
	* otherwise the {@code IllegalComponentStateException} will be thrown.
	* Refer to {@link Window#setShape}, {@link Window#setOpacity} and {@link
	* Window#setBackground} for details
	*
	* @param  undecorated {@code true} if no dialog decorations are to be
	*         enabled; {@code false} if dialog decorations are to be enabled
	*
	* @throws IllegalComponentStateException if the dialog is displayable
	* @throws IllegalComponentStateException if {@code undecorated} is
	*      {@code false}, and this dialog does not have the default shape
	* @throws IllegalComponentStateException if {@code undecorated} is
	*      {@code false}, and this dialog opacity is less than {@code 1.0f}
	* @throws IllegalComponentStateException if {@code undecorated} is
	*      {@code false}, and the alpha value of this dialog background
	*      color is less than {@code 1.0f}
	*
	* @see    #isUndecorated
	* @see    Component#isDisplayable
	* @see    Window#getShape
	* @see    Window#getOpacity
	* @see    Window#getBackground
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function setUndecorated(undecorated : Bool) : Void;
	
	/**
	* Indicates whether this dialog is undecorated.
	* By default, all dialogs are initially decorated.
	* @return    <code>true</code> if dialog is undecorated;
	*                        <code>false</code> otherwise.
	* @see       java.awt.Dialog#setUndecorated
	* @since 1.4
	*/
	@:require(java4) @:overload public function isUndecorated() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function setOpacity(opacity : Single) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function setShape(shape : java.awt.Shape) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function setBackground(bgColor : java.awt.Color) : Void;
	
	/**
	* Returns a string representing the state of this dialog. This
	* method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return    the parameter string of this dialog window.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this Dialog.
	* For dialogs, the AccessibleContext takes the form of an
	* AccessibleAWTDialog.
	* A new AccessibleAWTDialog instance is created if necessary.
	*
	* @return an AccessibleAWTDialog that serves as the
	*         AccessibleContext of this Dialog
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Modal dialogs block all input to some top-level windows.
* Whether a particular window is blocked depends on dialog's type
* of modality; this is called the "scope of blocking". The
* <code>ModalityType</code> enum specifies modal types and their
* associated scopes.
*
* @see Dialog#getModalityType
* @see Dialog#setModalityType
* @see Toolkit#isModalityTypeSupported
*
* @since 1.6
*/
@:require(java6) @:native('java$awt$Dialog$ModalityType') extern enum Dialog_ModalityType
{
	/**
	* <code>MODELESS</code> dialog doesn't block any top-level windows.
	*/
	MODELESS;
	/**
	* A <code>DOCUMENT_MODAL</code> dialog blocks input to all top-level windows
	* from the same document except those from its own child hierarchy.
	* A document is a top-level window without an owner. It may contain child
	* windows that, together with the top-level window are treated as a single
	* solid document. Since every top-level window must belong to some
	* document, its root can be found as the top-nearest window without an owner.
	*/
	DOCUMENT_MODAL;
	/**
	* An <code>APPLICATION_MODAL</code> dialog blocks all top-level windows
	* from the same Java application except those from its own child hierarchy.
	* If there are several applets launched in a browser, they can be
	* treated either as separate applications or a single one. This behavior
	* is implementation-dependent.
	*/
	APPLICATION_MODAL;
	/**
	* A <code>TOOLKIT_MODAL</code> dialog blocks all top-level windows run
	* from the same toolkit except those from its own child hierarchy. If there
	* are several applets launched in a browser, all of them run with the same
	* toolkit; thus, a toolkit-modal dialog displayed by an applet may affect
	* other applets and all windows of the browser instance which embeds the
	* Java runtime environment for this toolkit.
	* Special <code>AWTPermission</code> "toolkitModality" must be granted to use
	* toolkit-modal dialogs. If a <code>TOOLKIT_MODAL</code> dialog is being created
	* and this permission is not granted, a <code>SecurityException</code> will be
	* thrown, and no dialog will be created. If a modality type is being changed
	* to <code>TOOLKIT_MODAL</code> and this permission is not granted, a
	* <code>SecurityException</code> will be thrown, and the modality type will
	* be left unchanged.
	*/
	TOOLKIT_MODAL;
	
}

/**
* Any top-level window can be marked not to be blocked by modal
* dialogs. This is called "modal exclusion". This enum specifies
* the possible modal exclusion types.
*
* @see Window#getModalExclusionType
* @see Window#setModalExclusionType
* @see Toolkit#isModalExclusionTypeSupported
*
* @since 1.6
*/
@:require(java6) @:native('java$awt$Dialog$ModalExclusionType') extern enum Dialog_ModalExclusionType
{
	/**
	* No modal exclusion.
	*/
	NO_EXCLUDE;
	/**
	* <code>APPLICATION_EXCLUDE</code> indicates that a top-level window
	* won't be blocked by any application-modal dialogs. Also, it isn't
	* blocked by document-modal dialogs from outside of its child hierarchy.
	*/
	APPLICATION_EXCLUDE;
	/**
	* <code>TOOLKIT_EXCLUDE</code> indicates that a top-level window
	* won't be blocked by  application-modal or toolkit-modal dialogs. Also,
	* it isn't blocked by document-modal dialogs from outside of its
	* child hierarchy.
	* The "toolkitModality" <code>AWTPermission</code> must be granted
	* for this exclusion. If an exclusion property is being changed to
	* <code>TOOLKIT_EXCLUDE</code> and this permission is not granted, a
	* <code>SecurityEcxeption</code> will be thrown, and the exclusion
	* property will be left unchanged.
	*/
	TOOLKIT_EXCLUDE;
	
}

/**
* This class implements accessibility support for the
* <code>Dialog</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to dialog user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Dialog$AccessibleAWTDialog') extern class Dialog_AccessibleAWTDialog extends AccessibleAWTWindow
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the state of this object.
	*
	* @return an instance of AccessibleStateSet containing the current
	* state set of the object
	* @see AccessibleState
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}

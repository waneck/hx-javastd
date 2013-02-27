package javax.swing;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class TransferHandler implements java.io.Serializable
{
	/**
	* An <code>int</code> representing no transfer action.
	*/
	public static var NONE(default, null) : Int;
	
	/**
	* An <code>int</code> representing a &quot;copy&quot; transfer action.
	* This value is used when data is copied to a clipboard
	* or copied elsewhere in a drag and drop operation.
	*/
	public static var COPY(default, null) : Int;
	
	/**
	* An <code>int</code> representing a &quot;move&quot; transfer action.
	* This value is used when data is moved to a clipboard (i.e. a cut)
	* or moved elsewhere in a drag and drop operation.
	*/
	public static var MOVE(default, null) : Int;
	
	/**
	* An <code>int</code> representing a source action capability of either
	* &quot;copy&quot; or &quot;move&quot;.
	*/
	public static var COPY_OR_MOVE(default, null) : Int;
	
	/**
	* An <code>int</code> representing a &quot;link&quot; transfer action.
	* This value is used to specify that data should be linked in a drag
	* and drop operation.
	*
	* @see java.awt.dnd.DnDConstants#ACTION_LINK
	* @since 1.6
	*/
	@:require(java6) public static var LINK(default, null) : Int;
	
	/**
	* Returns an {@code Action} that performs cut operations to the
	* clipboard. When performed, this action operates on the {@code JComponent}
	* source of the {@code ActionEvent} by invoking {@code exportToClipboard},
	* with a {@code MOVE} action, on the component's {@code TransferHandler}.
	*
	* @return an {@code Action} for performing cuts to the clipboard
	*/
	@:overload public static function getCutAction() : javax.swing.Action;
	
	/**
	* Returns an {@code Action} that performs copy operations to the
	* clipboard. When performed, this action operates on the {@code JComponent}
	* source of the {@code ActionEvent} by invoking {@code exportToClipboard},
	* with a {@code COPY} action, on the component's {@code TransferHandler}.
	*
	* @return an {@code Action} for performing copies to the clipboard
	*/
	@:overload public static function getCopyAction() : javax.swing.Action;
	
	/**
	* Returns an {@code Action} that performs paste operations from the
	* clipboard. When performed, this action operates on the {@code JComponent}
	* source of the {@code ActionEvent} by invoking {@code importData},
	* with the clipboard contents, on the component's {@code TransferHandler}.
	*
	* @return an {@code Action} for performing pastes from the clipboard
	*/
	@:overload public static function getPasteAction() : javax.swing.Action;
	
	/**
	* Constructs a transfer handler that can transfer a Java Bean property
	* from one component to another via the clipboard or a drag and drop
	* operation.
	*
	* @param property  the name of the property to transfer; this can
	*  be <code>null</code> if there is no property associated with the transfer
	*  handler (a subclass that performs some other kind of transfer, for example)
	*/
	@:overload public function new(property : String) : Void;
	
	/**
	* Convenience constructor for subclasses.
	*/
	@:overload private function new() : Void;
	
	/**
	* Sets the drag image parameter. The image has to be prepared
	* for rendering by the moment of the call. The image is stored
	* by reference because of some performance reasons.
	*
	* @param img an image to drag
	*/
	@:overload public function setDragImage(img : java.awt.Image) : Void;
	
	/**
	* Returns the drag image. If there is no image to drag,
	* the returned value is {@code null}.
	*
	* @return the reference to the drag image
	*/
	@:overload public function getDragImage() : java.awt.Image;
	
	/**
	* Sets an anchor offset for the image to drag.
	* It can not be {@code null}.
	*
	* @param p a {@code Point} object that corresponds
	* to coordinates of an anchor offset of the image
	* relative to the upper left corner of the image
	*/
	@:overload public function setDragImageOffset(p : java.awt.Point) : Void;
	
	/**
	* Returns an anchor offset for the image to drag.
	*
	* @return a {@code Point} object that corresponds
	* to coordinates of an anchor offset of the image
	* relative to the upper left corner of the image.
	* The point {@code (0,0)} returns by default.
	*/
	@:overload public function getDragImageOffset() : java.awt.Point;
	
	/**
	* Causes the Swing drag support to be initiated.  This is called by
	* the various UI implementations in the <code>javax.swing.plaf.basic</code>
	* package if the dragEnabled property is set on the component.
	* This can be called by custom UI
	* implementations to use the Swing drag support.  This method can also be called
	* by a Swing extension written as a subclass of <code>JComponent</code>
	* to take advantage of the Swing drag support.
	* <p>
	* The transfer <em>will not necessarily</em> have been completed at the
	* return of this call (i.e. the call does not block waiting for the drop).
	* The transfer will take place through the Swing implementation of the
	* <code>java.awt.dnd</code> mechanism, requiring no further effort
	* from the developer. The <code>exportDone</code> method will be called
	* when the transfer has completed.
	*
	* @param comp  the component holding the data to be transferred;
	*              provided to enable sharing of <code>TransferHandler</code>s
	* @param e     the event that triggered the transfer
	* @param action the transfer action initially requested;
	*               either {@code COPY}, {@code MOVE} or {@code LINK};
	*               the DnD system may change the action used during the
	*               course of the drag operation
	*/
	@:overload public function exportAsDrag(comp : javax.swing.JComponent, e : java.awt.event.InputEvent, action : Int) : Void;
	
	/**
	* Causes a transfer from the given component to the
	* given clipboard.  This method is called by the default cut and
	* copy actions registered in a component's action map.
	* <p>
	* The transfer will take place using the <code>java.awt.datatransfer</code>
	* mechanism, requiring no further effort from the developer. Any data
	* transfer <em>will</em> be complete and the <code>exportDone</code>
	* method will be called with the action that occurred, before this method
	* returns. Should the clipboard be unavailable when attempting to place
	* data on it, the <code>IllegalStateException</code> thrown by
	* {@link Clipboard#setContents(Transferable, ClipboardOwner)} will
	* be propogated through this method. However,
	* <code>exportDone</code> will first be called with an action
	* of <code>NONE</code> for consistency.
	*
	* @param comp  the component holding the data to be transferred;
	*              provided to enable sharing of <code>TransferHandler</code>s
	* @param clip  the clipboard to transfer the data into
	* @param action the transfer action requested; this should
	*  be a value of either <code>COPY</code> or <code>MOVE</code>;
	*  the operation performed is the intersection  of the transfer
	*  capabilities given by getSourceActions and the requested action;
	*  the intersection may result in an action of <code>NONE</code>
	*  if the requested action isn't supported
	* @throws IllegalStateException if the clipboard is currently unavailable
	* @see Clipboard#setContents(Transferable, ClipboardOwner)
	*/
	@:overload public function exportToClipboard(comp : javax.swing.JComponent, clip : java.awt.datatransfer.Clipboard, action : Int) : Void;
	
	/**
	* Causes a transfer to occur from a clipboard or a drag and
	* drop operation. The <code>Transferable</code> to be
	* imported and the component to transfer to are contained
	* within the <code>TransferSupport</code>.
	* <p>
	* While the drag and drop implementation calls {@code canImport}
	* to determine the suitability of a transfer before calling this
	* method, the implementation of paste does not. As such, it cannot
	* be assumed that the transfer is acceptable upon a call to
	* this method for paste. It is recommended that {@code canImport} be
	* explicitly called to cover this case.
	* <p>
	* Note: The <code>TransferSupport</code> object passed to this method
	* is only valid for the duration of the method call. It is undefined
	* what values it may contain after this method returns.
	*
	* @param support the object containing the details of
	*        the transfer, not <code>null</code>.
	* @return true if the data was inserted into the component,
	*         false otherwise
	* @throws NullPointerException if <code>support</code> is {@code null}
	* @see #canImport(TransferHandler.TransferSupport)
	* @since 1.6
	*/
	@:require(java6) @:overload public function importData(support : TransferHandler_TransferSupport) : Bool;
	
	/**
	* Causes a transfer to a component from a clipboard or a
	* DND drop operation.  The <code>Transferable</code> represents
	* the data to be imported into the component.
	* <p>
	* Note: Swing now calls the newer version of <code>importData</code>
	* that takes a <code>TransferSupport</code>, which in turn calls this
	* method (if the component in the {@code TransferSupport} is a
	* {@code JComponent}). Developers are encouraged to call and override the
	* newer version as it provides more information (and is the only
	* version that supports use with a {@code TransferHandler} set directly
	* on a {@code JFrame} or other non-{@code JComponent}).
	*
	* @param comp  the component to receive the transfer;
	*              provided to enable sharing of <code>TransferHandler</code>s
	* @param t     the data to import
	* @return  true if the data was inserted into the component, false otherwise
	* @see #importData(TransferHandler.TransferSupport)
	*/
	@:overload public function importData(comp : javax.swing.JComponent, t : java.awt.datatransfer.Transferable) : Bool;
	
	/**
	* This method is called repeatedly during a drag and drop operation
	* to allow the developer to configure properties of, and to return
	* the acceptability of transfers; with a return value of {@code true}
	* indicating that the transfer represented by the given
	* {@code TransferSupport} (which contains all of the details of the
	* transfer) is acceptable at the current time, and a value of {@code false}
	* rejecting the transfer.
	* <p>
	* For those components that automatically display a drop location during
	* drag and drop, accepting the transfer, by default, tells them to show
	* the drop location. This can be changed by calling
	* {@code setShowDropLocation} on the {@code TransferSupport}.
	* <p>
	* By default, when the transfer is accepted, the chosen drop action is that
	* picked by the user via their drag gesture. The developer can override
	* this and choose a different action, from the supported source
	* actions, by calling {@code setDropAction} on the {@code TransferSupport}.
	* <p>
	* On every call to {@code canImport}, the {@code TransferSupport} contains
	* fresh state. As such, any properties set on it must be set on every
	* call. Upon a drop, {@code canImport} is called one final time before
	* calling into {@code importData}. Any state set on the
	* {@code TransferSupport} during that last call will be available in
	* {@code importData}.
	* <p>
	* This method is not called internally in response to paste operations.
	* As such, it is recommended that implementations of {@code importData}
	* explicitly call this method for such cases and that this method
	* be prepared to return the suitability of paste operations as well.
	* <p>
	* Note: The <code>TransferSupport</code> object passed to this method
	* is only valid for the duration of the method call. It is undefined
	* what values it may contain after this method returns.
	*
	* @param support the object containing the details of
	*        the transfer, not <code>null</code>.
	* @return <code>true</code> if the import can happen,
	*         <code>false</code> otherwise
	* @throws NullPointerException if <code>support</code> is {@code null}
	* @see #importData(TransferHandler.TransferSupport)
	* @see javax.swing.TransferHandler.TransferSupport#setShowDropLocation
	* @see javax.swing.TransferHandler.TransferSupport#setDropAction
	* @since 1.6
	*/
	@:require(java6) @:overload public function canImport(support : TransferHandler_TransferSupport) : Bool;
	
	/**
	* Indicates whether a component will accept an import of the given
	* set of data flavors prior to actually attempting to import it.
	* <p>
	* Note: Swing now calls the newer version of <code>canImport</code>
	* that takes a <code>TransferSupport</code>, which in turn calls this
	* method (only if the component in the {@code TransferSupport} is a
	* {@code JComponent}). Developers are encouraged to call and override the
	* newer version as it provides more information (and is the only
	* version that supports use with a {@code TransferHandler} set directly
	* on a {@code JFrame} or other non-{@code JComponent}).
	*
	* @param comp  the component to receive the transfer;
	*              provided to enable sharing of <code>TransferHandler</code>s
	* @param transferFlavors  the data formats available
	* @return  true if the data can be inserted into the component, false otherwise
	* @see #canImport(TransferHandler.TransferSupport)
	*/
	@:overload public function canImport(comp : javax.swing.JComponent, transferFlavors : java.NativeArray<java.awt.datatransfer.DataFlavor>) : Bool;
	
	/**
	* Returns the type of transfer actions supported by the source;
	* any bitwise-OR combination of {@code COPY}, {@code MOVE}
	* and {@code LINK}.
	* <p>
	* Some models are not mutable, so a transfer operation of {@code MOVE}
	* should not be advertised in that case. Returning {@code NONE}
	* disables transfers from the component.
	*
	* @param c  the component holding the data to be transferred;
	*           provided to enable sharing of <code>TransferHandler</code>s
	* @return {@code COPY} if the transfer property can be found,
	*          otherwise returns <code>NONE</code>
	*/
	@:overload public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	/**
	* Returns an object that establishes the look of a transfer.  This is
	* useful for both providing feedback while performing a drag operation and for
	* representing the transfer in a clipboard implementation that has a visual
	* appearance.  The implementation of the <code>Icon</code> interface should
	* not alter the graphics clip or alpha level.
	* The icon implementation need not be rectangular or paint all of the
	* bounding rectangle and logic that calls the icons paint method should
	* not assume the all bits are painted. <code>null</code> is a valid return value
	* for this method and indicates there is no visual representation provided.
	* In that case, the calling logic is free to represent the
	* transferable however it wants.
	* <p>
	* The default Swing logic will not do an alpha blended drag animation if
	* the return is <code>null</code>.
	*
	* @param t  the data to be transferred; this value is expected to have been
	*  created by the <code>createTransferable</code> method
	* @return  <code>null</code>, indicating
	*    there is no default visual representation
	*/
	@:overload public function getVisualRepresentation(t : java.awt.datatransfer.Transferable) : javax.swing.Icon;
	
	/**
	* Creates a <code>Transferable</code> to use as the source for
	* a data transfer. Returns the representation of the data to
	* be transferred, or <code>null</code> if the component's
	* property is <code>null</code>
	*
	* @param c  the component holding the data to be transferred;
	*              provided to enable sharing of <code>TransferHandler</code>s
	* @return  the representation of the data to be transferred, or
	*  <code>null</code> if the property associated with <code>c</code>
	*  is <code>null</code>
	*
	*/
	@:overload private function createTransferable(c : javax.swing.JComponent) : java.awt.datatransfer.Transferable;
	
	/**
	* Invoked after data has been exported.  This method should remove
	* the data that was transferred if the action was <code>MOVE</code>.
	* <p>
	* This method is implemented to do nothing since <code>MOVE</code>
	* is not a supported action of this implementation
	* (<code>getSourceActions</code> does not include <code>MOVE</code>).
	*
	* @param source the component that was the source of the data
	* @param data   The data that was transferred or possibly null
	*               if the action is <code>NONE</code>.
	* @param action the actual action that was performed
	*/
	@:overload private function exportDone(source : javax.swing.JComponent, data : java.awt.datatransfer.Transferable, action : Int) : Void;
	
	
}
/**
* An interface to tag things with a {@code getTransferHandler} method.
*/
@:native('javax$swing$TransferHandler$HasGetTransferHandler') @:internal extern interface TransferHandler_HasGetTransferHandler
{
	/** Returns the {@code TransferHandler}.
	*
	* @return The {@code TransferHandler} or {@code null}
	*/
	@:overload public function getTransferHandler() : TransferHandler;
	
	
}
/**
* Represents a location where dropped data should be inserted.
* This is a base class that only encapsulates a point.
* Components supporting drop may provide subclasses of this
* containing more information.
* <p>
* Developers typically shouldn't create instances of, or extend, this
* class. Instead, these are something provided by the DnD
* implementation by <code>TransferSupport</code> instances and by
* components with a <code>getDropLocation()</code> method.
*
* @see javax.swing.TransferHandler.TransferSupport#getDropLocation
* @since 1.6
*/
@:require(java6) @:native('javax$swing$TransferHandler$DropLocation') extern class TransferHandler_DropLocation
{
	/**
	* Constructs a drop location for the given point.
	*
	* @param dropPoint the drop point, representing the mouse's
	*        current location within the component.
	* @throws IllegalArgumentException if the point
	*         is <code>null</code>
	*/
	@:overload private function new(dropPoint : java.awt.Point) : Void;
	
	/**
	* Returns the drop point, representing the mouse's
	* current location within the component.
	*
	* @return the drop point.
	*/
	@:overload @:final public function getDropPoint() : java.awt.Point;
	
	/**
	* Returns a string representation of this drop location.
	* This method is intended to be used for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.
	*
	* @return a string representation of this drop location
	*/
	@:overload public function toString() : String;
	
	
}
/**
* This class encapsulates all relevant details of a clipboard
* or drag and drop transfer, and also allows for customizing
* aspects of the drag and drop experience.
* <p>
* The main purpose of this class is to provide the information
* needed by a developer to determine the suitability of a
* transfer or to import the data contained within. But it also
* doubles as a controller for customizing properties during drag
* and drop, such as whether or not to show the drop location,
* and which drop action to use.
* <p>
* Developers typically need not create instances of this
* class. Instead, they are something provided by the DnD
* implementation to certain methods in <code>TransferHandler</code>.
*
* @see #canImport(TransferHandler.TransferSupport)
* @see #importData(TransferHandler.TransferSupport)
* @since 1.6
*/
@:require(java6) @:native('javax$swing$TransferHandler$TransferSupport') extern class TransferHandler_TransferSupport
{
	/**
	* Create a <code>TransferSupport</code> with <code>isDrop()</code>
	* <code>false</code> for the given component and
	* <code>Transferable</code>.
	*
	* @param component the target component
	* @param transferable the transferable
	* @throws NullPointerException if either parameter
	*         is <code>null</code>
	*/
	@:overload public function new(component : java.awt.Component, transferable : java.awt.datatransfer.Transferable) : Void;
	
	/**
	* Returns whether or not this <code>TransferSupport</code>
	* represents a drop operation.
	*
	* @return <code>true</code> if this is a drop operation,
	*         <code>false</code> otherwise.
	*/
	@:overload public function isDrop() : Bool;
	
	/**
	* Returns the target component of this transfer.
	*
	* @return the target component
	*/
	@:overload public function getComponent() : java.awt.Component;
	
	/**
	* Returns the current (non-{@code null}) drop location for the component,
	* when this {@code TransferSupport} represents a drop.
	* <p>
	* Note: For components with built-in drop support, this location
	* will be a subclass of {@code DropLocation} of the same type
	* returned by that component's {@code getDropLocation} method.
	* <p>
	* This method is only for use with drag and drop transfers.
	* Calling it when {@code isDrop()} is {@code false} results
	* in an {@code IllegalStateException}.
	*
	* @return the drop location
	* @throws IllegalStateException if this is not a drop
	* @see #isDrop()
	*/
	@:overload public function getDropLocation() : TransferHandler_DropLocation;
	
	/**
	* Sets whether or not the drop location should be visually indicated
	* for the transfer - which must represent a drop. This is applicable to
	* those components that automatically
	* show the drop location when appropriate during a drag and drop
	* operation). By default, the drop location is shown only when the
	* {@code TransferHandler} has said it can accept the import represented
	* by this {@code TransferSupport}. With this method you can force the
	* drop location to always be shown, or always not be shown.
	* <p>
	* This method is only for use with drag and drop transfers.
	* Calling it when {@code isDrop()} is {@code false} results
	* in an {@code IllegalStateException}.
	*
	* @param showDropLocation whether or not to indicate the drop location
	* @throws IllegalStateException if this is not a drop
	* @see #isDrop()
	*/
	@:overload public function setShowDropLocation(showDropLocation : Bool) : Void;
	
	/**
	* Sets the drop action for the transfer - which must represent a drop
	* - to the given action,
	* instead of the default user drop action. The action must be
	* supported by the source's drop actions, and must be one
	* of {@code COPY}, {@code MOVE} or {@code LINK}.
	* <p>
	* This method is only for use with drag and drop transfers.
	* Calling it when {@code isDrop()} is {@code false} results
	* in an {@code IllegalStateException}.
	*
	* @param dropAction the drop action
	* @throws IllegalStateException if this is not a drop
	* @throws IllegalArgumentException if an invalid action is specified
	* @see #getDropAction
	* @see #getUserDropAction
	* @see #getSourceDropActions
	* @see #isDrop()
	*/
	@:overload public function setDropAction(dropAction : Int) : Void;
	
	/**
	* Returns the action chosen for the drop, when this
	* {@code TransferSupport} represents a drop.
	* <p>
	* Unless explicitly chosen by way of {@code setDropAction},
	* this returns the user drop action provided by
	* {@code getUserDropAction}.
	* <p>
	* You may wish to query this in {@code TransferHandler}'s
	* {@code importData} method to customize processing based
	* on the action.
	* <p>
	* This method is only for use with drag and drop transfers.
	* Calling it when {@code isDrop()} is {@code false} results
	* in an {@code IllegalStateException}.
	*
	* @return the action chosen for the drop
	* @throws IllegalStateException if this is not a drop
	* @see #setDropAction
	* @see #getUserDropAction
	* @see #isDrop()
	*/
	@:overload public function getDropAction() : Int;
	
	/**
	* Returns the user drop action for the drop, when this
	* {@code TransferSupport} represents a drop.
	* <p>
	* The user drop action is chosen for a drop as described in the
	* documentation for {@link java.awt.dnd.DropTargetDragEvent} and
	* {@link java.awt.dnd.DropTargetDropEvent}. A different action
	* may be chosen as the drop action by way of the {@code setDropAction}
	* method.
	* <p>
	* You may wish to query this in {@code TransferHandler}'s
	* {@code canImport} method when determining the suitability of a
	* drop or when deciding on a drop action to explicitly choose.
	* <p>
	* This method is only for use with drag and drop transfers.
	* Calling it when {@code isDrop()} is {@code false} results
	* in an {@code IllegalStateException}.
	*
	* @return the user drop action
	* @throws IllegalStateException if this is not a drop
	* @see #setDropAction
	* @see #getDropAction
	* @see #isDrop()
	*/
	@:overload public function getUserDropAction() : Int;
	
	/**
	* Returns the drag source's supported drop actions, when this
	* {@code TransferSupport} represents a drop.
	* <p>
	* The source actions represent the set of actions supported by the
	* source of this transfer, and are represented as some bitwise-OR
	* combination of {@code COPY}, {@code MOVE} and {@code LINK}.
	* You may wish to query this in {@code TransferHandler}'s
	* {@code canImport} method when determining the suitability of a drop
	* or when deciding on a drop action to explicitly choose. To determine
	* if a particular action is supported by the source, bitwise-AND
	* the action with the source drop actions, and then compare the result
	* against the original action. For example:
	* <pre>
	* boolean copySupported = (COPY & getSourceDropActions()) == COPY;
	* </pre>
	* <p>
	* This method is only for use with drag and drop transfers.
	* Calling it when {@code isDrop()} is {@code false} results
	* in an {@code IllegalStateException}.
	*
	* @return the drag source's supported drop actions
	* @throws IllegalStateException if this is not a drop
	* @see #isDrop()
	*/
	@:overload public function getSourceDropActions() : Int;
	
	/**
	* Returns the data flavors for this transfer.
	*
	* @return the data flavors for this transfer
	*/
	@:overload public function getDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns whether or not the given data flavor is supported.
	*
	* @param df the <code>DataFlavor</code> to test
	* @return whether or not the given flavor is supported.
	*/
	@:overload public function isDataFlavorSupported(df : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns the <code>Transferable</code> associated with this transfer.
	* <p>
	* Note: Unless it is necessary to fetch the <code>Transferable</code>
	* directly, use one of the other methods on this class to inquire about
	* the transfer. This may perform better than fetching the
	* <code>Transferable</code> and asking it directly.
	*
	* @return the <code>Transferable</code> associated with this transfer
	*/
	@:overload public function getTransferable() : java.awt.datatransfer.Transferable;
	
	
}
@:native('javax$swing$TransferHandler$PropertyTransferable') @:internal extern class TransferHandler_PropertyTransferable implements java.awt.datatransfer.Transferable
{
	/**
	* Returns an array of <code>DataFlavor</code> objects indicating the flavors the data
	* can be provided in.  The array should be ordered according to preference
	* for providing the data (from most richly descriptive to least descriptive).
	* @return an array of data flavors in which this data can be transferred
	*/
	@:overload public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns whether the specified data flavor is supported for
	* this object.
	* @param flavor the requested flavor for the data
	* @return true if this <code>DataFlavor</code> is supported,
	*   otherwise false
	*/
	@:overload public function isDataFlavorSupported(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns an object which represents the data to be transferred.  The class
	* of the object returned is defined by the representation class of the flavor.
	*
	* @param flavor the requested flavor for the data
	* @see DataFlavor#getRepresentationClass
	* @exception IOException                if the data is no longer available
	*              in the requested flavor.
	* @exception UnsupportedFlavorException if the requested data flavor is
	*              not supported.
	*/
	@:overload public function getTransferData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	
}
/**
* This is the default drop target for drag and drop operations if
* one isn't provided by the developer.  <code>DropTarget</code>
* only supports one <code>DropTargetListener</code> and doesn't
* function properly if it isn't set.
* This class sets the one listener as the linkage of drop handling
* to the <code>TransferHandler</code>, and adds support for
* additional listeners which some of the <code>ComponentUI</code>
* implementations install to manipulate a drop insertion location.
*/
@:native('javax$swing$TransferHandler$SwingDropTarget') @:internal extern class TransferHandler_SwingDropTarget extends java.awt.dnd.DropTarget implements javax.swing.plaf.UIResource
{
	@:overload override public function addDropTargetListener(dtl : java.awt.dnd.DropTargetListener) : Void;
	
	@:overload override public function removeDropTargetListener(dtl : java.awt.dnd.DropTargetListener) : Void;
	
	@:overload override public function dragEnter(e : java.awt.dnd.DropTargetDragEvent) : Void;
	
	@:overload override public function dragOver(e : java.awt.dnd.DropTargetDragEvent) : Void;
	
	@:overload override public function dragExit(e : java.awt.dnd.DropTargetEvent) : Void;
	
	@:overload override public function drop(e : java.awt.dnd.DropTargetDropEvent) : Void;
	
	@:overload override public function dropActionChanged(e : java.awt.dnd.DropTargetDragEvent) : Void;
	
	
}
@:native('javax$swing$TransferHandler$DropHandler') @:internal extern class TransferHandler_DropHandler implements java.awt.dnd.DropTargetListener implements java.io.Serializable implements java.awt.event.ActionListener
{
	/**
	* The timer fired, perform autoscroll if the pointer is within the
	* autoscroll region.
	* <P>
	* @param e the <code>ActionEvent</code>
	*/
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function dragEnter(e : java.awt.dnd.DropTargetDragEvent) : Void;
	
	@:overload public function dragOver(e : java.awt.dnd.DropTargetDragEvent) : Void;
	
	@:overload public function dragExit(e : java.awt.dnd.DropTargetEvent) : Void;
	
	@:overload public function drop(e : java.awt.dnd.DropTargetDropEvent) : Void;
	
	@:overload public function dropActionChanged(e : java.awt.dnd.DropTargetDragEvent) : Void;
	
	
}
/**
* This is the default drag handler for drag and drop operations that
* use the <code>TransferHandler</code>.
*/
@:native('javax$swing$TransferHandler$DragHandler') @:internal extern class TransferHandler_DragHandler implements java.awt.dnd.DragGestureListener implements java.awt.dnd.DragSourceListener
{
	/**
	* a Drag gesture has been recognized
	*/
	@:overload public function dragGestureRecognized(dge : java.awt.dnd.DragGestureEvent) : Void;
	
	/**
	* as the hotspot enters a platform dependent drop site
	*/
	@:overload public function dragEnter(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* as the hotspot moves over a platform dependent drop site
	*/
	@:overload public function dragOver(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* as the hotspot exits a platform dependent drop site
	*/
	@:overload public function dragExit(dsde : java.awt.dnd.DragSourceEvent) : Void;
	
	/**
	* as the operation completes
	*/
	@:overload public function dragDropEnd(dsde : java.awt.dnd.DragSourceDropEvent) : Void;
	
	@:overload public function dropActionChanged(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	
}
@:native('javax$swing$TransferHandler$SwingDragGestureRecognizer') @:internal extern class TransferHandler_SwingDragGestureRecognizer extends java.awt.dnd.DragGestureRecognizer
{
	/**
	* register this DragGestureRecognizer's Listeners with the Component
	*/
	@:overload override private function registerListeners() : Void;
	
	/**
	* unregister this DragGestureRecognizer's Listeners with the Component
	*
	* subclasses must override this method
	*/
	@:overload override private function unregisterListeners() : Void;
	
	
}
@:native('javax$swing$TransferHandler$TransferAction') @:internal extern class TransferHandler_TransferAction extends sun.swing.UIAction implements javax.swing.plaf.UIResource
{
	@:overload override public function isEnabled(sender : Dynamic) : Bool;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}

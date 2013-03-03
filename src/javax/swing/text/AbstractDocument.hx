package javax.swing.text;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractDocument implements javax.swing.text.Document implements java.io.Serializable
{
	/**
	* Constructs a new <code>AbstractDocument</code>, wrapped around some
	* specified content storage mechanism.
	*
	* @param data the content
	*/
	@:overload @:protected private function new(data : javax.swing.text.AbstractDocument.AbstractDocument_Content) : Void;
	
	/**
	* Constructs a new <code>AbstractDocument</code>, wrapped around some
	* specified content storage mechanism.
	*
	* @param data the content
	* @param context the attribute context
	*/
	@:overload @:protected private function new(data : javax.swing.text.AbstractDocument.AbstractDocument_Content, context : javax.swing.text.AbstractDocument.AbstractDocument_AttributeContext) : Void;
	
	/**
	* Supports managing a set of properties. Callers
	* can use the <code>documentProperties</code> dictionary
	* to annotate the document with document-wide properties.
	*
	* @return a non-<code>null</code> <code>Dictionary</code>
	* @see #setDocumentProperties
	*/
	@:overload @:public public function getDocumentProperties() : java.util.Dictionary<Dynamic, Dynamic>;
	
	/**
	* Replaces the document properties dictionary for this document.
	*
	* @param x the new dictionary
	* @see #getDocumentProperties
	*/
	@:overload @:public public function setDocumentProperties(x : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload @:protected private function fireInsertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload @:protected private function fireChangedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload @:protected private function fireRemoveUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload @:protected private function fireUndoableEditUpdate(e : javax.swing.event.UndoableEditEvent) : Void;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this document.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* document <code>d</code>
	* for its document listeners with the following code:
	*
	* <pre>DocumentListener[] mls = (DocumentListener[])(d.getListeners(DocumentListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this component,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getDocumentListeners
	* @see #getUndoableEditListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Gets the asynchronous loading priority.  If less than zero,
	* the document should not be loaded asynchronously.
	*
	* @return the asynchronous loading priority, or <code>-1</code>
	*   if the document should not be loaded asynchronously
	*/
	@:overload @:public public function getAsynchronousLoadPriority() : Int;
	
	/**
	* Sets the asynchronous loading priority.
	* @param p the new asynchronous loading priority; a value
	*   less than zero indicates that the document should not be
	*   loaded asynchronously
	*/
	@:overload @:public public function setAsynchronousLoadPriority(p : Int) : Void;
	
	/**
	* Sets the <code>DocumentFilter</code>. The <code>DocumentFilter</code>
	* is passed <code>insert</code> and <code>remove</code> to conditionally
	* allow inserting/deleting of the text.  A <code>null</code> value
	* indicates that no filtering will occur.
	*
	* @param filter the <code>DocumentFilter</code> used to constrain text
	* @see #getDocumentFilter
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function setDocumentFilter(filter : javax.swing.text.DocumentFilter) : Void;
	
	/**
	* Returns the <code>DocumentFilter</code> that is responsible for
	* filtering of insertion/removal. A <code>null</code> return value
	* implies no filtering is to occur.
	*
	* @since 1.4
	* @see #setDocumentFilter
	* @return the DocumentFilter
	*/
	@:require(java4) @:overload @:public public function getDocumentFilter() : javax.swing.text.DocumentFilter;
	
	/**
	* This allows the model to be safely rendered in the presence
	* of currency, if the model supports being updated asynchronously.
	* The given runnable will be executed in a way that allows it
	* to safely read the model with no changes while the runnable
	* is being executed.  The runnable itself may <em>not</em>
	* make any mutations.
	* <p>
	* This is implemented to aquire a read lock for the duration
	* of the runnables execution.  There may be multiple runnables
	* executing at the same time, and all writers will be blocked
	* while there are active rendering runnables.  If the runnable
	* throws an exception, its lock will be safely released.
	* There is no protection against a runnable that never exits,
	* which will effectively leave the document locked for it's
	* lifetime.
	* <p>
	* If the given runnable attempts to make any mutations in
	* this implementation, a deadlock will occur.  There is
	* no tracking of individual rendering threads to enable
	* detecting this situation, but a subclass could incur
	* the overhead of tracking them and throwing an error.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param r the renderer to execute
	*/
	@:overload @:public public function render(r : java.lang.Runnable) : Void;
	
	/**
	* Returns the length of the data.  This is the number of
	* characters of content that represents the users data.
	*
	* @return the length >= 0
	* @see Document#getLength
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Adds a document listener for notification of any changes.
	*
	* @param listener the <code>DocumentListener</code> to add
	* @see Document#addDocumentListener
	*/
	@:overload @:public public function addDocumentListener(listener : javax.swing.event.DocumentListener) : Void;
	
	/**
	* Removes a document listener.
	*
	* @param listener the <code>DocumentListener</code> to remove
	* @see Document#removeDocumentListener
	*/
	@:overload @:public public function removeDocumentListener(listener : javax.swing.event.DocumentListener) : Void;
	
	/**
	* Returns an array of all the document listeners
	* registered on this document.
	*
	* @return all of this document's <code>DocumentListener</code>s
	*         or an empty array if no document listeners are
	*         currently registered
	*
	* @see #addDocumentListener
	* @see #removeDocumentListener
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getDocumentListeners() : java.NativeArray<javax.swing.event.DocumentListener>;
	
	/**
	* Adds an undo listener for notification of any changes.
	* Undo/Redo operations performed on the <code>UndoableEdit</code>
	* will cause the appropriate DocumentEvent to be fired to keep
	* the view(s) in sync with the model.
	*
	* @param listener the <code>UndoableEditListener</code> to add
	* @see Document#addUndoableEditListener
	*/
	@:overload @:public public function addUndoableEditListener(listener : javax.swing.event.UndoableEditListener) : Void;
	
	/**
	* Removes an undo listener.
	*
	* @param listener the <code>UndoableEditListener</code> to remove
	* @see Document#removeDocumentListener
	*/
	@:overload @:public public function removeUndoableEditListener(listener : javax.swing.event.UndoableEditListener) : Void;
	
	/**
	* Returns an array of all the undoable edit listeners
	* registered on this document.
	*
	* @return all of this document's <code>UndoableEditListener</code>s
	*         or an empty array if no undoable edit listeners are
	*         currently registered
	*
	* @see #addUndoableEditListener
	* @see #removeUndoableEditListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getUndoableEditListeners() : java.NativeArray<javax.swing.event.UndoableEditListener>;
	
	/**
	* A convenience method for looking up a property value. It is
	* equivalent to:
	* <pre>
	* getDocumentProperties().get(key);
	* </pre>
	*
	* @param key the non-<code>null</code> property key
	* @return the value of this property or <code>null</code>
	* @see #getDocumentProperties
	*/
	@:overload @:public @:final public function getProperty(key : Dynamic) : Dynamic;
	
	/**
	* A convenience method for storing up a property value.  It is
	* equivalent to:
	* <pre>
	* getDocumentProperties().put(key, value);
	* </pre>
	* If <code>value</code> is <code>null</code> this method will
	* remove the property.
	*
	* @param key the non-<code>null</code> key
	* @param value the property value
	* @see #getDocumentProperties
	*/
	@:overload @:public @:final public function putProperty(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Removes some content from the document.
	* Removing content causes a write lock to be held while the
	* actual changes are taking place.  Observers are notified
	* of the change on the thread that called this method.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offs the starting offset >= 0
	* @param len the number of characters to remove >= 0
	* @exception BadLocationException  the given remove position is not a valid
	*   position within the document
	* @see Document#remove
	*/
	@:overload @:public public function remove(offs : Int, len : Int) : Void;
	
	/**
	* Deletes the region of text from <code>offset</code> to
	* <code>offset + length</code>, and replaces it with <code>text</code>.
	* It is up to the implementation as to how this is implemented, some
	* implementations may treat this as two distinct operations: a remove
	* followed by an insert, others may treat the replace as one atomic
	* operation.
	*
	* @param offset index of child element
	* @param length length of text to delete, may be 0 indicating don't
	*               delete anything
	* @param text text to insert, <code>null</code> indicates no text to insert
	* @param attrs AttributeSet indicating attributes of inserted text,
	*              <code>null</code>
	*              is legal, and typically treated as an empty attributeset,
	*              but exact interpretation is left to the subclass
	* @exception BadLocationException the given position is not a valid
	*            position within the document
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function replace(offset : Int, length : Int, text : String, attrs : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Inserts some content into the document.
	* Inserting content causes a write lock to be held while the
	* actual changes are taking place, followed by notification
	* to the observers on the thread that grabbed the write lock.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offs the starting offset >= 0
	* @param str the string to insert; does nothing with null/empty strings
	* @param a the attributes for the inserted content
	* @exception BadLocationException  the given insert position is not a valid
	*   position within the document
	* @see Document#insertString
	*/
	@:overload @:public public function insertString(offs : Int, str : String, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Gets a sequence of text from the document.
	*
	* @param offset the starting offset >= 0
	* @param length the number of characters to retrieve >= 0
	* @return the text
	* @exception BadLocationException  the range given includes a position
	*   that is not a valid position within the document
	* @see Document#getText
	*/
	@:overload @:public public function getText(offset : Int, length : Int) : String;
	
	/**
	* Fetches the text contained within the given portion
	* of the document.
	* <p>
	* If the partialReturn property on the txt parameter is false, the
	* data returned in the Segment will be the entire length requested and
	* may or may not be a copy depending upon how the data was stored.
	* If the partialReturn property is true, only the amount of text that
	* can be returned without creating a copy is returned.  Using partial
	* returns will give better performance for situations where large
	* parts of the document are being scanned.  The following is an example
	* of using the partial return to access the entire document:
	* <p>
	* <pre>
	* &nbsp; int nleft = doc.getDocumentLength();
	* &nbsp; Segment text = new Segment();
	* &nbsp; int offs = 0;
	* &nbsp; text.setPartialReturn(true);
	* &nbsp; while (nleft > 0) {
	* &nbsp;     doc.getText(offs, nleft, text);
	* &nbsp;     // do something with text
	* &nbsp;     nleft -= text.count;
	* &nbsp;     offs += text.count;
	* &nbsp; }
	* </pre>
	*
	* @param offset the starting offset >= 0
	* @param length the number of characters to retrieve >= 0
	* @param txt the Segment object to retrieve the text into
	* @exception BadLocationException  the range given includes a position
	*   that is not a valid position within the document
	*/
	@:overload @:public public function getText(offset : Int, length : Int, txt : javax.swing.text.Segment) : Void;
	
	/**
	* Returns a position that will track change as the document
	* is altered.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offs the position in the model >= 0
	* @return the position
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
	* @see Document#createPosition
	*/
	@:overload @:public @:synchronized public function createPosition(offs : Int) : javax.swing.text.Position;
	
	/**
	* Returns a position that represents the start of the document.  The
	* position returned can be counted on to track change and stay
	* located at the beginning of the document.
	*
	* @return the position
	*/
	@:overload @:public @:final public function getStartPosition() : javax.swing.text.Position;
	
	/**
	* Returns a position that represents the end of the document.  The
	* position returned can be counted on to track change and stay
	* located at the end of the document.
	*
	* @return the position
	*/
	@:overload @:public @:final public function getEndPosition() : javax.swing.text.Position;
	
	/**
	* Gets all root elements defined.  Typically, there
	* will only be one so the default implementation
	* is to return the default root element.
	*
	* @return the root element
	*/
	@:overload @:public public function getRootElements() : java.NativeArray<javax.swing.text.Element>;
	
	/**
	* Returns the root element that views should be based upon
	* unless some other mechanism for assigning views to element
	* structures is provided.
	*
	* @return the root element
	* @see Document#getDefaultRootElement
	*/
	@:overload @:public @:abstract public function getDefaultRootElement() : javax.swing.text.Element;
	
	/**
	* Returns the root element of the bidirectional structure for this
	* document.  Its children represent character runs with a given
	* Unicode bidi level.
	*/
	@:overload @:public public function getBidiRootElement() : javax.swing.text.Element;
	
	/**
	* Get the paragraph element containing the given position.  Sub-classes
	* must define for themselves what exactly constitutes a paragraph.  They
	* should keep in mind however that a paragraph should at least be the
	* unit of text over which to run the Unicode bidirectional algorithm.
	*
	* @param pos the starting offset >= 0
	* @return the element */
	@:overload @:public @:abstract public function getParagraphElement(pos : Int) : javax.swing.text.Element;
	
	/**
	* Fetches the context for managing attributes.  This
	* method effectively establishes the strategy used
	* for compressing AttributeSet information.
	*
	* @return the context
	*/
	@:overload @:protected @:final private function getAttributeContext() : javax.swing.text.AbstractDocument.AbstractDocument_AttributeContext;
	
	/**
	* Updates document structure as a result of text insertion.  This
	* will happen within a write lock.  If a subclass of
	* this class reimplements this method, it should delegate to the
	* superclass as well.
	*
	* @param chng a description of the change
	* @param attr the attributes for the change
	*/
	@:overload @:protected private function insertUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent, attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Updates any document structure as a result of text removal.  This
	* method is called before the text is actually removed from the Content.
	* This will happen within a write lock. If a subclass
	* of this class reimplements this method, it should delegate to the
	* superclass as well.
	*
	* @param chng a description of the change
	*/
	@:overload @:protected private function removeUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	/**
	* Updates any document structure as a result of text removal.  This
	* method is called after the text has been removed from the Content.
	* This will happen within a write lock. If a subclass
	* of this class reimplements this method, it should delegate to the
	* superclass as well.
	*
	* @param chng a description of the change
	*/
	@:overload @:protected private function postRemoveUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	/**
	* Gives a diagnostic dump.
	*
	* @param out the output stream
	*/
	@:overload @:public public function dump(out : java.io.PrintStream) : Void;
	
	/**
	* Gets the content for the document.
	*
	* @return the content
	*/
	@:overload @:protected @:final private function getContent() : javax.swing.text.AbstractDocument.AbstractDocument_Content;
	
	/**
	* Creates a document leaf element.
	* Hook through which elements are created to represent the
	* document structure.  Because this implementation keeps
	* structure and content separate, elements grow automatically
	* when content is extended so splits of existing elements
	* follow.  The document itself gets to decide how to generate
	* elements to give flexibility in the type of elements used.
	*
	* @param parent the parent element
	* @param a the attributes for the element
	* @param p0 the beginning of the range >= 0
	* @param p1 the end of the range >= p0
	* @return the new element
	*/
	@:overload @:protected private function createLeafElement(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet, p0 : Int, p1 : Int) : javax.swing.text.Element;
	
	/**
	* Creates a document branch element, that can contain other elements.
	*
	* @param parent the parent element
	* @param a the attributes
	* @return the element
	*/
	@:overload @:protected private function createBranchElement(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet) : javax.swing.text.Element;
	
	/**
	* Fetches the current writing thread if there is one.
	* This can be used to distinguish whether a method is
	* being called as part of an existing modification or
	* if a lock needs to be acquired and a new transaction
	* started.
	*
	* @return the thread actively modifying the document
	*  or <code>null</code> if there are no modifications in progress
	*/
	@:overload @:protected @:synchronized @:final private function getCurrentWriter() : java.lang.Thread;
	
	/**
	* Acquires a lock to begin mutating the document this lock
	* protects.  There can be no writing, notification of changes, or
	* reading going on in order to gain the lock.  Additionally a thread is
	* allowed to gain more than one <code>writeLock</code>,
	* as long as it doesn't attempt to gain additional <code>writeLock</code>s
	* from within document notification.  Attempting to gain a
	* <code>writeLock</code> from within a DocumentListener notification will
	* result in an <code>IllegalStateException</code>.  The ability
	* to obtain more than one <code>writeLock</code> per thread allows
	* subclasses to gain a writeLock, perform a number of operations, then
	* release the lock.
	* <p>
	* Calls to <code>writeLock</code>
	* must be balanced with calls to <code>writeUnlock</code>, else the
	* <code>Document</code> will be left in a locked state so that no
	* reading or writing can be done.
	*
	* @exception IllegalStateException thrown on illegal lock
	*  attempt.  If the document is implemented properly, this can
	*  only happen if a document listener attempts to mutate the
	*  document.  This situation violates the bean event model
	*  where order of delivery is not guaranteed and all listeners
	*  should be notified before further mutations are allowed.
	*/
	@:overload @:protected @:synchronized @:final private function writeLock() : Void;
	
	/**
	* Releases a write lock previously obtained via <code>writeLock</code>.
	* After decrementing the lock count if there are no oustanding locks
	* this will allow a new writer, or readers.
	*
	* @see #writeLock
	*/
	@:overload @:protected @:synchronized @:final private function writeUnlock() : Void;
	
	/**
	* Acquires a lock to begin reading some state from the
	* document.  There can be multiple readers at the same time.
	* Writing blocks the readers until notification of the change
	* to the listeners has been completed.  This method should
	* be used very carefully to avoid unintended compromise
	* of the document.  It should always be balanced with a
	* <code>readUnlock</code>.
	*
	* @see #readUnlock
	*/
	@:overload @:public @:synchronized @:final public function readLock() : Void;
	
	/**
	* Does a read unlock.  This signals that one
	* of the readers is done.  If there are no more readers
	* then writing can begin again.  This should be balanced
	* with a readLock, and should occur in a finally statement
	* so that the balance is guaranteed.  The following is an
	* example.
	* <pre><code>
	* &nbsp;   readLock();
	* &nbsp;   try {
	* &nbsp;       // do something
	* &nbsp;   } finally {
	* &nbsp;       readUnlock();
	* &nbsp;   }
	* </code></pre>
	*
	* @see #readLock
	*/
	@:overload @:public @:synchronized @:final public function readUnlock() : Void;
	
	/**
	* The event listener list for the document.
	*/
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Error message to indicate a bad location.
	*/
	@:protected @:static @:final private static var BAD_LOCATION(default, null) : String;
	
	/**
	* Name of elements used to represent paragraphs
	*/
	@:public @:static @:final public static var ParagraphElementName(default, null) : String;
	
	/**
	* Name of elements used to represent content
	*/
	@:public @:static @:final public static var ContentElementName(default, null) : String;
	
	/**
	* Name of elements used to hold sections (lines/paragraphs).
	*/
	@:public @:static @:final public static var SectionElementName(default, null) : String;
	
	/**
	* Name of elements used to hold a unidirectional run
	*/
	@:public @:static @:final public static var BidiElementName(default, null) : String;
	
	/**
	* Name of the attribute used to specify element
	* names.
	*/
	@:public @:static @:final public static var ElementNameAttribute(default, null) : String;
	
	
}
/**
* Interface to describe a sequence of character content that
* can be edited.  Implementations may or may not support a
* history mechanism which will be reflected by whether or not
* mutations return an UndoableEdit implementation.
* @see AbstractDocument
*/
@:native('javax$swing$text$AbstractDocument$Content') extern interface AbstractDocument_Content
{
	/**
	* Creates a position within the content that will
	* track change as the content is mutated.
	*
	* @param offset the offset in the content >= 0
	* @return a Position
	* @exception BadLocationException for an invalid offset
	*/
	@:overload @:public public function createPosition(offset : Int) : javax.swing.text.Position;
	
	/**
	* Current length of the sequence of character content.
	*
	* @return the length >= 0
	*/
	@:overload @:public public function length() : Int;
	
	/**
	* Inserts a string of characters into the sequence.
	*
	* @param where   offset into the sequence to make the insertion >= 0
	* @param str     string to insert
	* @return  if the implementation supports a history mechanism,
	*    a reference to an <code>Edit</code> implementation will be returned,
	*    otherwise returns <code>null</code>
	* @exception BadLocationException  thrown if the area covered by
	*   the arguments is not contained in the character sequence
	*/
	@:overload @:public public function insertString(where : Int, str : String) : javax.swing.undo.UndoableEdit;
	
	/**
	* Removes some portion of the sequence.
	*
	* @param where   The offset into the sequence to make the
	*   insertion >= 0.
	* @param nitems  The number of items in the sequence to remove >= 0.
	* @return  If the implementation supports a history mechansim,
	*    a reference to an Edit implementation will be returned,
	*    otherwise null.
	* @exception BadLocationException  Thrown if the area covered by
	*   the arguments is not contained in the character sequence.
	*/
	@:overload @:public public function remove(where : Int, nitems : Int) : javax.swing.undo.UndoableEdit;
	
	/**
	* Fetches a string of characters contained in the sequence.
	*
	* @param where   Offset into the sequence to fetch >= 0.
	* @param len     number of characters to copy >= 0.
	* @return the string
	* @exception BadLocationException  Thrown if the area covered by
	*   the arguments is not contained in the character sequence.
	*/
	@:overload @:public public function getString(where : Int, len : Int) : String;
	
	/**
	* Gets a sequence of characters and copies them into a Segment.
	*
	* @param where the starting offset >= 0
	* @param len the number of characters >= 0
	* @param txt the target location to copy into
	* @exception BadLocationException  Thrown if the area covered by
	*   the arguments is not contained in the character sequence.
	*/
	@:overload @:public public function getChars(where : Int, len : Int, txt : javax.swing.text.Segment) : Void;
	
	
}
/**
* An interface that can be used to allow MutableAttributeSet
* implementations to use pluggable attribute compression
* techniques.  Each mutation of the attribute set can be
* used to exchange a previous AttributeSet instance with
* another, preserving the possibility of the AttributeSet
* remaining immutable.  An implementation is provided by
* the StyleContext class.
*
* The Element implementations provided by this class use
* this interface to provide their MutableAttributeSet
* implementations, so that different AttributeSet compression
* techniques can be employed.  The method
* <code>getAttributeContext</code> should be implemented to
* return the object responsible for implementing the desired
* compression technique.
*
* @see StyleContext
*/
@:native('javax$swing$text$AbstractDocument$AttributeContext') extern interface AbstractDocument_AttributeContext
{
	/**
	* Adds an attribute to the given set, and returns
	* the new representative set.
	*
	* @param old the old attribute set
	* @param name the non-null attribute name
	* @param value the attribute value
	* @return the updated attribute set
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload @:public public function addAttribute(old : javax.swing.text.AttributeSet, name : Dynamic, value : Dynamic) : javax.swing.text.AttributeSet;
	
	/**
	* Adds a set of attributes to the element.
	*
	* @param old the old attribute set
	* @param attr the attributes to add
	* @return the updated attribute set
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload @:public public function addAttributes(old : javax.swing.text.AttributeSet, attr : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Removes an attribute from the set.
	*
	* @param old the old attribute set
	* @param name the non-null attribute name
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttribute
	*/
	@:overload @:public public function removeAttribute(old : javax.swing.text.AttributeSet, name : Dynamic) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a set of attributes for the element.
	*
	* @param old the old attribute set
	* @param names the attribute names
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload @:public public function removeAttributes(old : javax.swing.text.AttributeSet, names : java.util.Enumeration<Dynamic>) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a set of attributes for the element.
	*
	* @param old the old attribute set
	* @param attrs the attributes
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload @:public public function removeAttributes(old : javax.swing.text.AttributeSet, attrs : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Fetches an empty AttributeSet.
	*
	* @return the attribute set
	*/
	@:overload @:public public function getEmptySet() : javax.swing.text.AttributeSet;
	
	/**
	* Reclaims an attribute set.
	* This is a way for a MutableAttributeSet to mark that it no
	* longer need a particular immutable set.  This is only necessary
	* in 1.1 where there are no weak references.  A 1.1 implementation
	* would call this in its finalize method.
	*
	* @param a the attribute set to reclaim
	*/
	@:overload @:public public function reclaim(a : javax.swing.text.AttributeSet) : Void;
	
	
}
/**
* Implements the abstract part of an element.  By default elements
* support attributes by having a field that represents the immutable
* part of the current attribute set for the element.  The element itself
* implements MutableAttributeSet which can be used to modify the set
* by fetching a new immutable set.  The immutable sets are provided
* by the AttributeContext associated with the document.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$text$AbstractDocument$AbstractElement') extern class AbstractDocument_AbstractElement implements javax.swing.text.Element implements javax.swing.text.MutableAttributeSet implements java.io.Serializable implements javax.swing.tree.TreeNode
{
	/**
	* Creates a new AbstractElement.
	*
	* @param parent the parent element
	* @param a the attributes for the element
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Dumps a debugging representation of the element hierarchy.
	*
	* @param psOut the output stream
	* @param indentAmount the indentation level >= 0
	*/
	@:overload @:public public function dump(psOut : java.io.PrintStream, indentAmount : Int) : Void;
	
	/**
	* Gets the number of attributes that are defined.
	*
	* @return the number of attributes >= 0
	* @see AttributeSet#getAttributeCount
	*/
	@:overload @:public public function getAttributeCount() : Int;
	
	/**
	* Checks whether a given attribute is defined.
	*
	* @param attrName the non-null attribute name
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload @:public public function isDefined(attrName : Dynamic) : Bool;
	
	/**
	* Checks whether two attribute sets are equal.
	*
	* @param attr the attribute set to check against
	* @return true if the same
	* @see AttributeSet#isEqual
	*/
	@:overload @:public public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Copies a set of attributes.
	*
	* @return the copy
	* @see AttributeSet#copyAttributes
	*/
	@:overload @:public public function copyAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the value of an attribute.
	*
	* @param attrName the non-null attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload @:public public function getAttribute(attrName : Dynamic) : Dynamic;
	
	/**
	* Gets the names of all attributes.
	*
	* @return the attribute names as an enumeration
	* @see AttributeSet#getAttributeNames
	*/
	@:overload @:public public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Checks whether a given attribute name/value is defined.
	*
	* @param name the non-null attribute name
	* @param value the attribute value
	* @return true if the name/value is defined
	* @see AttributeSet#containsAttribute
	*/
	@:overload @:public public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	/**
	* Checks whether the element contains all the attributes.
	*
	* @param attrs the attributes to check
	* @return true if the element contains all the attributes
	* @see AttributeSet#containsAttributes
	*/
	@:overload @:public public function containsAttributes(attrs : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Gets the resolving parent.
	* If not overridden, the resolving parent defaults to
	* the parent element.
	*
	* @return the attributes from the parent, <code>null</code> if none
	* @see AttributeSet#getResolveParent
	*/
	@:overload @:public public function getResolveParent() : javax.swing.text.AttributeSet;
	
	/**
	* Adds an attribute to the element.
	*
	* @param name the non-null attribute name
	* @param value the attribute value
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload @:public public function addAttribute(name : Dynamic, value : Dynamic) : Void;
	
	/**
	* Adds a set of attributes to the element.
	*
	* @param attr the attributes to add
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload @:public public function addAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Removes an attribute from the set.
	*
	* @param name the non-null attribute name
	* @see MutableAttributeSet#removeAttribute
	*/
	@:overload @:public public function removeAttribute(name : Dynamic) : Void;
	
	/**
	* Removes a set of attributes for the element.
	*
	* @param names the attribute names
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload @:public public function removeAttributes(names : java.util.Enumeration<Dynamic>) : Void;
	
	/**
	* Removes a set of attributes for the element.
	*
	* @param attrs the attributes
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload @:public public function removeAttributes(attrs : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Sets the resolving parent.
	*
	* @param parent the parent, null if none
	* @see MutableAttributeSet#setResolveParent
	*/
	@:overload @:public public function setResolveParent(parent : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Retrieves the underlying model.
	*
	* @return the model
	*/
	@:overload @:public public function getDocument() : javax.swing.text.Document;
	
	/**
	* Gets the parent of the element.
	*
	* @return the parent
	*/
	@:overload @:public public function getParentElement() : javax.swing.text.Element;
	
	/**
	* Gets the attributes for the element.
	*
	* @return the attribute set
	*/
	@:overload @:public public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the name of the element.
	*
	* @return the name, null if none
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Gets the starting offset in the model for the element.
	*
	* @return the offset >= 0
	*/
	@:overload @:public @:abstract public function getStartOffset() : Int;
	
	/**
	* Gets the ending offset in the model for the element.
	*
	* @return the offset >= 0
	*/
	@:overload @:public @:abstract public function getEndOffset() : Int;
	
	/**
	* Gets a child element.
	*
	* @param index the child index, >= 0 && < getElementCount()
	* @return the child element
	*/
	@:overload @:public @:abstract public function getElement(index : Int) : javax.swing.text.Element;
	
	/**
	* Gets the number of children for the element.
	*
	* @return the number of children >= 0
	*/
	@:overload @:public @:abstract public function getElementCount() : Int;
	
	/**
	* Gets the child element index closest to the given model offset.
	*
	* @param offset the offset >= 0
	* @return the element index >= 0
	*/
	@:overload @:public @:abstract public function getElementIndex(offset : Int) : Int;
	
	/**
	* Checks whether the element is a leaf.
	*
	* @return true if a leaf
	*/
	@:overload @:public @:abstract public function isLeaf() : Bool;
	
	/**
	* Returns the child <code>TreeNode</code> at index
	* <code>childIndex</code>.
	*/
	@:overload @:public public function getChildAt(childIndex : Int) : javax.swing.tree.TreeNode;
	
	/**
	* Returns the number of children <code>TreeNode</code>'s
	* receiver contains.
	* @return the number of children <code>TreeNodews</code>'s
	* receiver contains
	*/
	@:overload @:public public function getChildCount() : Int;
	
	/**
	* Returns the parent <code>TreeNode</code> of the receiver.
	* @return the parent <code>TreeNode</code> of the receiver
	*/
	@:overload @:public public function getParent() : javax.swing.tree.TreeNode;
	
	/**
	* Returns the index of <code>node</code> in the receivers children.
	* If the receiver does not contain <code>node</code>, -1 will be
	* returned.
	* @param node the location of interest
	* @return the index of <code>node</code> in the receiver's
	* children, or -1 if absent
	*/
	@:overload @:public public function getIndex(node : javax.swing.tree.TreeNode) : Int;
	
	/**
	* Returns true if the receiver allows children.
	* @return true if the receiver allows children, otherwise false
	*/
	@:overload @:public @:abstract public function getAllowsChildren() : Bool;
	
	/**
	* Returns the children of the receiver as an
	* <code>Enumeration</code>.
	* @return the children of the receiver as an <code>Enumeration</code>
	*/
	@:overload @:public @:abstract public function children() : java.util.Enumeration<Dynamic>;
	
	
}
/**
* Implements a composite element that contains other elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$text$AbstractDocument$BranchElement') extern class AbstractDocument_BranchElement extends javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement
{
	/**
	* Constructs a composite element that initially contains
	* no children.
	*
	* @param parent  The parent element
	* @param a the attributes for the element
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Gets the child element that contains
	* the given model position.
	*
	* @param pos the position >= 0
	* @return the element, null if none
	*/
	@:overload @:public public function positionToElement(pos : Int) : javax.swing.text.Element;
	
	/**
	* Replaces content with a new set of elements.
	*
	* @param offset the starting offset >= 0
	* @param length the length to replace >= 0
	* @param elems the new elements
	*/
	@:overload @:public public function replace(offset : Int, length : Int, elems : java.NativeArray<javax.swing.text.Element>) : Void;
	
	/**
	* Converts the element to a string.
	*
	* @return the string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Gets the element name.
	*
	* @return the element name
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Gets the starting offset in the model for the element.
	*
	* @return the offset >= 0
	*/
	@:overload @:public override public function getStartOffset() : Int;
	
	/**
	* Gets the ending offset in the model for the element.
	* @throws NullPointerException if this element has no children
	*
	* @return the offset >= 0
	*/
	@:overload @:public override public function getEndOffset() : Int;
	
	/**
	* Gets a child element.
	*
	* @param index the child index, >= 0 && < getElementCount()
	* @return the child element, null if none
	*/
	@:overload @:public override public function getElement(index : Int) : javax.swing.text.Element;
	
	/**
	* Gets the number of children for the element.
	*
	* @return the number of children >= 0
	*/
	@:overload @:public override public function getElementCount() : Int;
	
	/**
	* Gets the child element index closest to the given model offset.
	*
	* @param offset the offset >= 0
	* @return the element index >= 0
	*/
	@:overload @:public override public function getElementIndex(offset : Int) : Int;
	
	/**
	* Checks whether the element is a leaf.
	*
	* @return true if a leaf
	*/
	@:overload @:public override public function isLeaf() : Bool;
	
	/**
	* Returns true if the receiver allows children.
	* @return true if the receiver allows children, otherwise false
	*/
	@:overload @:public override public function getAllowsChildren() : Bool;
	
	/**
	* Returns the children of the receiver as an
	* <code>Enumeration</code>.
	* @return the children of the receiver
	*/
	@:overload @:public override public function children() : java.util.Enumeration<Dynamic>;
	
	
}
/**
* Implements an element that directly represents content of
* some kind.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see     Element
*/
@:native('javax$swing$text$AbstractDocument$LeafElement') extern class AbstractDocument_LeafElement extends javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement
{
	/**
	* Constructs an element that represents content within the
	* document (has no children).
	*
	* @param parent  The parent element
	* @param a       The element attributes
	* @param offs0   The start offset >= 0
	* @param offs1   The end offset >= offs0
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet, offs0 : Int, offs1 : Int) : Void;
	
	/**
	* Converts the element to a string.
	*
	* @return the string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Gets the starting offset in the model for the element.
	*
	* @return the offset >= 0
	*/
	@:overload @:public override public function getStartOffset() : Int;
	
	/**
	* Gets the ending offset in the model for the element.
	*
	* @return the offset >= 0
	*/
	@:overload @:public override public function getEndOffset() : Int;
	
	/**
	* Gets the element name.
	*
	* @return the name
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Gets the child element index closest to the given model offset.
	*
	* @param pos the offset >= 0
	* @return the element index >= 0
	*/
	@:overload @:public override public function getElementIndex(pos : Int) : Int;
	
	/**
	* Gets a child element.
	*
	* @param index the child index, >= 0 && < getElementCount()
	* @return the child element
	*/
	@:overload @:public override public function getElement(index : Int) : javax.swing.text.Element;
	
	/**
	* Returns the number of child elements.
	*
	* @return the number of children >= 0
	*/
	@:overload @:public override public function getElementCount() : Int;
	
	/**
	* Checks whether the element is a leaf.
	*
	* @return true if a leaf
	*/
	@:overload @:public override public function isLeaf() : Bool;
	
	/**
	* Returns true if the receiver allows children.
	* @return true if the receiver allows children, otherwise false
	*/
	@:overload @:public override public function getAllowsChildren() : Bool;
	
	/**
	* Returns the children of the receiver as an
	* <code>Enumeration</code>.
	* @return the children of the receiver
	*/
	@:overload @:public override public function children() : java.util.Enumeration<Dynamic>;
	
	
}
/**
* Represents the root element of the bidirectional element structure.
* The root element is the only element in the bidi element structure
* which contains children.
*/
@:native('javax$swing$text$AbstractDocument$BidiRootElement') @:internal extern class AbstractDocument_BidiRootElement extends javax.swing.text.AbstractDocument.AbstractDocument_BranchElement
{
	/**
	* Gets the name of the element.
	* @return the name
	*/
	@:overload @:public override public function getName() : String;
	
	
}
/**
* Represents an element of the bidirectional element structure.
*/
@:native('javax$swing$text$AbstractDocument$BidiElement') @:internal extern class AbstractDocument_BidiElement extends javax.swing.text.AbstractDocument.AbstractDocument_LeafElement
{
	/**
	* Gets the name of the element.
	* @return the name
	*/
	@:overload @:public override public function getName() : String;
	
	
}
/**
* Stores document changes as the document is being
* modified.  Can subsequently be used for change notification
* when done with the document modification transaction.
* This is used by the AbstractDocument class and its extensions
* for broadcasting change information to the document listeners.
*/
@:native('javax$swing$text$AbstractDocument$DefaultDocumentEvent') extern class AbstractDocument_DefaultDocumentEvent extends javax.swing.undo.CompoundEdit implements javax.swing.event.DocumentEvent
{
	/**
	* Constructs a change record.
	*
	* @param offs the offset into the document of the change >= 0
	* @param len  the length of the change >= 0
	* @param type the type of event (DocumentEvent.EventType)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(offs : Int, len : Int, type : javax.swing.event.DocumentEvent.DocumentEvent_EventType) : Void;
	
	/**
	* Returns a string description of the change event.
	*
	* @return a string
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Adds a document edit.  If the number of edits crosses
	* a threshold, this switches on a hashtable lookup for
	* ElementChange implementations since access of these
	* needs to be relatively quick.
	*
	* @param anEdit a document edit record
	* @return true if the edit was added
	*/
	@:overload @:public override public function addEdit(anEdit : javax.swing.undo.UndoableEdit) : Bool;
	
	/**
	* Redoes a change.
	*
	* @exception CannotRedoException if the change cannot be redone
	*/
	@:overload @:public override public function redo() : Void;
	
	/**
	* Undoes a change.
	*
	* @exception CannotUndoException if the change cannot be undone
	*/
	@:overload @:public override public function undo() : Void;
	
	/**
	* DefaultDocument events are significant.  If you wish to aggregate
	* DefaultDocumentEvents to present them as a single edit to the user
	* place them into a CompoundEdit.
	*
	* @return whether the event is significant for edit undo purposes
	*/
	@:overload @:public override public function isSignificant() : Bool;
	
	/**
	* Provides a localized, human readable description of this edit
	* suitable for use in, say, a change log.
	*
	* @return the description
	*/
	@:overload @:public override public function getPresentationName() : String;
	
	/**
	* Provides a localized, human readable description of the undoable
	* form of this edit, e.g. for use as an Undo menu item. Typically
	* derived from getDescription();
	*
	* @return the description
	*/
	@:overload @:public override public function getUndoPresentationName() : String;
	
	/**
	* Provides a localized, human readable description of the redoable
	* form of this edit, e.g. for use as a Redo menu item. Typically
	* derived from getPresentationName();
	*
	* @return the description
	*/
	@:overload @:public override public function getRedoPresentationName() : String;
	
	/**
	* Returns the type of event.
	*
	* @return the event type as a DocumentEvent.EventType
	* @see DocumentEvent#getType
	*/
	@:overload @:public public function getType() : javax.swing.event.DocumentEvent.DocumentEvent_EventType;
	
	/**
	* Returns the offset within the document of the start of the change.
	*
	* @return the offset >= 0
	* @see DocumentEvent#getOffset
	*/
	@:overload @:public public function getOffset() : Int;
	
	/**
	* Returns the length of the change.
	*
	* @return the length >= 0
	* @see DocumentEvent#getLength
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Gets the document that sourced the change event.
	*
	* @return the document
	* @see DocumentEvent#getDocument
	*/
	@:overload @:public public function getDocument() : javax.swing.text.Document;
	
	/**
	* Gets the changes for an element.
	*
	* @param elem the element
	* @return the changes
	*/
	@:overload @:public public function getChange(elem : javax.swing.text.Element) : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange;
	
	
}
/**
* This event used when firing document changes while Undo/Redo
* operations. It just wraps DefaultDocumentEvent and delegates
* all calls to it except getType() which depends on operation
* (Undo or Redo).
*/
@:native('javax$swing$text$AbstractDocument$UndoRedoDocumentEvent') @:internal extern class AbstractDocument_UndoRedoDocumentEvent implements javax.swing.event.DocumentEvent
{
	@:overload @:public public function new(src : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent, isUndo : Bool) : Void;
	
	@:overload @:public public function getSource() : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent;
	
	@:overload @:public public function getOffset() : Int;
	
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function getDocument() : javax.swing.text.Document;
	
	@:overload @:public public function getType() : javax.swing.event.DocumentEvent.DocumentEvent_EventType;
	
	@:overload @:public public function getChange(elem : javax.swing.text.Element) : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange;
	
	
}
/**
* An implementation of ElementChange that can be added to the document
* event.
*/
@:native('javax$swing$text$AbstractDocument$ElementEdit') extern class AbstractDocument_ElementEdit extends javax.swing.undo.AbstractUndoableEdit implements javax.swing.event.DocumentEvent.DocumentEvent_ElementChange
{
	/**
	* Constructs an edit record.  This does not modify the element
	* so it can safely be used to <em>catch up</em> a view to the
	* current model state for views that just attached to a model.
	*
	* @param e the element
	* @param index the index into the model >= 0
	* @param removed a set of elements that were removed
	* @param added a set of elements that were added
	*/
	@:overload @:public public function new(e : javax.swing.text.Element, index : Int, removed : java.NativeArray<javax.swing.text.Element>, added : java.NativeArray<javax.swing.text.Element>) : Void;
	
	/**
	* Returns the underlying element.
	*
	* @return the element
	*/
	@:overload @:public public function getElement() : javax.swing.text.Element;
	
	/**
	* Returns the index into the list of elements.
	*
	* @return the index >= 0
	*/
	@:overload @:public public function getIndex() : Int;
	
	/**
	* Gets a list of children that were removed.
	*
	* @return the list
	*/
	@:overload @:public public function getChildrenRemoved() : java.NativeArray<javax.swing.text.Element>;
	
	/**
	* Gets a list of children that were added.
	*
	* @return the list
	*/
	@:overload @:public public function getChildrenAdded() : java.NativeArray<javax.swing.text.Element>;
	
	/**
	* Redoes a change.
	*
	* @exception CannotRedoException if the change cannot be redone
	*/
	@:overload @:public override public function redo() : Void;
	
	/**
	* Undoes a change.
	*
	* @exception CannotUndoException if the change cannot be undone
	*/
	@:overload @:public override public function undo() : Void;
	
	
}
@:native('javax$swing$text$AbstractDocument$DefaultFilterBypass') @:internal extern class AbstractDocument_DefaultFilterBypass extends javax.swing.text.DocumentFilter.DocumentFilter_FilterBypass
{
	@:overload @:public override public function getDocument() : javax.swing.text.Document;
	
	@:overload @:public override public function remove(offset : Int, length : Int) : Void;
	
	@:overload @:public override public function insertString(offset : Int, string : String, attr : javax.swing.text.AttributeSet) : Void;
	
	@:overload @:public override public function replace(offset : Int, length : Int, text : String, attrs : javax.swing.text.AttributeSet) : Void;
	
	
}

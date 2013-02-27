package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001,2002,2004,2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class DocumentImpl extends com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl implements org.w3c.dom.traversal.DocumentTraversal implements org.w3c.dom.events.DocumentEvent implements org.w3c.dom.ranges.DocumentRange
{
	/** Iterators */
	private var iterators : java.util.Vector<Dynamic>;
	
	/** Ranges */
	private var ranges : java.util.Vector<Dynamic>;
	
	/** Table for event listeners registered to this document nodes. */
	private var eventListeners : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Bypass mutation events firing. */
	private var mutationEvents : Bool;
	
	/**
	* NON-DOM: Actually creating a Document is outside the DOM's spec,
	* since it has to operate in terms of a particular implementation.
	*/
	@:overload public function new() : Void;
	
	/** Constructor. */
	@:overload public function new(grammarAccess : Bool) : Void;
	
	/**
	* For DOM2 support.
	* The createDocument factory method is in DOMImplementation.
	*/
	@:overload public function new(doctype : org.w3c.dom.DocumentType) : Void;
	
	/** For DOM2 support. */
	@:overload public function new(doctype : org.w3c.dom.DocumentType, grammarAccess : Bool) : Void;
	
	/**
	* Deep-clone a document, including fixing ownerDoc for the cloned
	* children. Note that this requires bypassing the WRONG_DOCUMENT_ERR
	* protection. I've chosen to implement it by calling importNode
	* which is DOM Level 2.
	*
	* @return org.w3c.dom.Node
	* @param deep boolean, iff true replicate children
	*/
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Retrieve information describing the abilities of this particular
	* DOM implementation. Intended to support applications that may be
	* using DOMs retrieved from several different sources, potentially
	* with different underlying representations.
	*/
	@:overload override public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* NON-DOM extension:
	* Create and return a NodeIterator. The NodeIterator is
	* added to a list of NodeIterators so that it can be
	* removed to free up the DOM Nodes it references.
	*
	* @param root The root of the iterator.
	* @param whatToShow The whatToShow mask.
	* @param filter The NodeFilter installed. Null means no filter.
	*/
	@:overload public function createNodeIterator(root : org.w3c.dom.Node, whatToShow : java.StdTypes.Int16, filter : org.w3c.dom.traversal.NodeFilter) : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Create and return a NodeIterator. The NodeIterator is
	* added to a list of NodeIterators so that it can be
	* removed to free up the DOM Nodes it references.
	*
	* @param root The root of the iterator.
	* @param whatToShow The whatToShow mask.
	* @param filter The NodeFilter installed. Null means no filter.
	* @param entityReferenceExpansion true to expand the contents of
	*                                 EntityReference nodes
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload public function createNodeIterator(root : org.w3c.dom.Node, whatToShow : Int, filter : org.w3c.dom.traversal.NodeFilter, entityReferenceExpansion : Bool) : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* NON-DOM extension:
	* Create and return a TreeWalker.
	*
	* @param root The root of the iterator.
	* @param whatToShow The whatToShow mask.
	* @param filter The NodeFilter installed. Null means no filter.
	*/
	@:overload public function createTreeWalker(root : org.w3c.dom.Node, whatToShow : java.StdTypes.Int16, filter : org.w3c.dom.traversal.NodeFilter) : org.w3c.dom.traversal.TreeWalker;
	
	/**
	* Create and return a TreeWalker.
	*
	* @param root The root of the iterator.
	* @param whatToShow The whatToShow mask.
	* @param filter The NodeFilter installed. Null means no filter.
	* @param entityReferenceExpansion true to expand the contents of
	*                                 EntityReference nodes
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload public function createTreeWalker(root : org.w3c.dom.Node, whatToShow : Int, filter : org.w3c.dom.traversal.NodeFilter, entityReferenceExpansion : Bool) : org.w3c.dom.traversal.TreeWalker;
	
	/**
	*/
	@:overload public function createRange() : org.w3c.dom.ranges.Range;
	
	/**
	* Introduced in DOM Level 2. Optional. <p>
	* Create and return Event objects.
	*
	* @param type The eventType parameter specifies the type of Event
	* interface to be created.  If the Event interface specified is supported
	* by the implementation this method will return a new Event of the
	* interface type requested. If the Event is to be dispatched via the
	* dispatchEvent method the appropriate event init method must be called
	* after creation in order to initialize the Event's values.  As an
	* example, a user wishing to synthesize some kind of Event would call
	* createEvent with the parameter "Events". The initEvent method could then
	* be called on the newly created Event to set the specific type of Event
	* to be dispatched and set its context information.
	* @return Newly created Event
	* @exception DOMException NOT_SUPPORTED_ERR: Raised if the implementation
	* does not support the type of Event interface requested
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload public function createEvent(type : String) : org.w3c.dom.events.Event;
	
	/**
	* Store event listener registered on a given node
	* This is another place where we could use weak references! Indeed, the
	* node here won't be GC'ed as long as some listener is registered on it,
	* since the eventsListeners table will have a reference to the node.
	*/
	@:overload private function setEventListeners(n : com.sun.org.apache.xerces.internal.dom.NodeImpl, listeners : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Retreive event listener registered on a given node
	*/
	@:overload private function getEventListeners(n : com.sun.org.apache.xerces.internal.dom.NodeImpl) : java.util.Vector<Dynamic>;
	
	/**
	* Introduced in DOM Level 2. <p> Register an event listener with this
	* Node. A listener may be independently registered as both Capturing and
	* Bubbling, but may only be registered once per role; redundant
	* registrations are ignored.
	* @param node node to add listener to
	* @param type Event name (NOT event group!) to listen for.
	* @param listener Who gets called when event is dispatched
	* @param useCapture True iff listener is registered on
	*  capturing phase rather than at-target or bubbling
	*/
	@:overload override private function addEventListener(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, type : String, listener : org.w3c.dom.events.EventListener, useCapture : Bool) : Void;
	
	/**
	* Introduced in DOM Level 2. <p> Deregister an event listener previously
	* registered with this Node.  A listener must be independently removed
	* from the Capturing and Bubbling roles. Redundant removals (of listeners
	* not currently registered for this role) are ignored.
	* @param node node to remove listener from
	* @param type Event name (NOT event group!) to listen for.
	* @param listener Who gets called when event is dispatched
	* @param useCapture True iff listener is registered on
	*  capturing phase rather than at-target or bubbling
	*/
	@:overload override private function removeEventListener(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, type : String, listener : org.w3c.dom.events.EventListener, useCapture : Bool) : Void;
	
	@:overload override private function copyEventListeners(src : com.sun.org.apache.xerces.internal.dom.NodeImpl, tgt : com.sun.org.apache.xerces.internal.dom.NodeImpl) : Void;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Distribution engine for DOM Level 2 Events.
	* <p>
	* Event propagation runs as follows:
	* <ol>
	* <li>Event is dispatched to a particular target node, which invokes
	*   this code. Note that the event's stopPropagation flag is
	*   cleared when dispatch begins; thereafter, if it has
	*   been set before processing of a node commences, we instead
	*   immediately advance to the DEFAULT phase.
	* <li>The node's ancestors are established as destinations for events.
	*   For capture and bubble purposes, node ancestry is determined at
	*   the time dispatch starts. If an event handler alters the document
	*   tree, that does not change which nodes will be informed of the event.
	* <li>CAPTURING_PHASE: Ancestors are scanned, root to target, for
	*   Capturing listeners. If found, they are invoked (see below).
	* <li>AT_TARGET:
	*   Event is dispatched to NON-CAPTURING listeners on the
	*   target node. Note that capturing listeners on this node are _not_
	*   invoked.
	* <li>BUBBLING_PHASE: Ancestors are scanned, target to root, for
	*   non-capturing listeners.
	* <li>Default processing: Some DOMs have default behaviors bound to
	*   specific nodes. If this DOM does, and if the event's preventDefault
	*   flag has not been set, we now return to the target node and process
	*   its default handler for this event, if any.
	* </ol>
	* <p>
	* Note that registration of handlers during processing of an event does
	* not take effect during this phase of this event; they will not be called
	* until the next time this node is visited by dispatchEvent. On the other
	* hand, removals take effect immediately.
	* <p>
	* If an event handler itself causes events to be dispatched, they are
	* processed synchronously, before processing resumes
	* on the event which triggered them. Please be aware that this may
	* result in events arriving at listeners "out of order" relative
	* to the actual sequence of requests.
	* <p>
	* Note that our implementation resets the event's stop/prevent flags
	* when dispatch begins.
	* I believe the DOM's intent is that event objects be redispatchable,
	* though it isn't stated in those terms.
	* @param node node to dispatch to
	* @param event the event object to be dispatched to
	*              registered EventListeners
	* @return true if the event's <code>preventDefault()</code>
	*              method was invoked by an EventListener; otherwise false.
	*/
	@:overload override private function dispatchEvent(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, event : org.w3c.dom.events.Event) : Bool;
	
	/**
	* NON-DOM INTERNAL: DOMNodeInsertedIntoDocument and ...RemovedFrom...
	* are dispatched to an entire subtree. This is the distribution code
	* therefor. They DO NOT bubble, thanks be, but may be captured.
	* <p>
	* Similar to code in dispatchingEventToSubtree however this method
	* is only used on the target node and does not start a dispatching chain
	* on the sibling of the target node as this is not part of the subtree
	* ***** At the moment I'm being sloppy and using the normal
	* capture dispatcher on every node. This could be optimized hugely
	* by writing a capture engine that tracks our position in the tree to
	* update the capture chain without repeated chases up to root.
	* @param n target node (that was directly inserted or removed)
	* @param e event to be sent to that node and its subtree
	*/
	@:overload private function dispatchEventToSubtree(n : org.w3c.dom.Node, e : org.w3c.dom.events.Event) : Void;
	
	/**
	* Dispatches event to the target node's descendents recursively
	*
	* @param n node to dispatch to
	* @param e event to be sent to that node and its subtree
	*/
	@:overload private function dispatchingEventToSubtree(n : org.w3c.dom.Node, e : org.w3c.dom.events.Event) : Void;
	
	/**
	* NON-DOM INTERNAL: Convenience wrapper for calling
	* dispatchAggregateEvents when the context was established
	* by <code>savedEnclosingAttr</code>.
	* @param node node to dispatch to
	* @param ea description of Attr affected by current operation
	*/
	@:overload private function dispatchAggregateEvents(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, ea : DocumentImpl_EnclosingAttr) : Void;
	
	/**
	* NON-DOM INTERNAL: Generate the "aggregated" post-mutation events
	* DOMAttrModified and DOMSubtreeModified.
	* Both of these should be issued only once for each user-requested
	* mutation operation, even if that involves multiple changes to
	* the DOM.
	* For example, if a DOM operation makes multiple changes to a single
	* Attr before returning, it would be nice to generate only one
	* DOMAttrModified, and multiple changes over larger scope but within
	* a recognizable single subtree might want to generate only one
	* DOMSubtreeModified, sent to their lowest common ancestor.
	* <p>
	* To manage this, use the "internal" versions of insert and remove
	* with MUTATION_LOCAL, then make an explicit call to this routine
	* at the higher level. Some examples now exist in our code.
	*
	* @param node The node to dispatch to
	* @param enclosingAttr The Attr node (if any) whose value has been changed
	* as a result of the DOM operation. Null if none such.
	* @param oldValue The String value previously held by the
	* enclosingAttr. Ignored if none such.
	* @param change Type of modification to the attr. See
	* MutationEvent.attrChange
	*/
	@:overload private function dispatchAggregateEvents(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, enclosingAttr : com.sun.org.apache.xerces.internal.dom.AttrImpl, oldvalue : String, change : java.StdTypes.Int16) : Void;
	
	/**
	* NON-DOM INTERNAL: Pre-mutation context check, in
	* preparation for later generating DOMAttrModified events.
	* Determines whether this node is within an Attr
	* @param node node to get enclosing attribute for
	* @return either a description of that Attr, or null if none such.
	*/
	@:overload private function saveEnclosingAttr(node : com.sun.org.apache.xerces.internal.dom.NodeImpl) : Void;
	
	
}
/*
* NON-DOM INTERNAL: Class LEntry is just a struct used to represent
* event listeners registered with this node. Copies of this object
* are hung from the nodeListeners Vector.
* <p>
* I considered using two vectors -- one for capture,
* one for bubble -- but decided that since the list of listeners
* is probably short in most cases, it might not be worth spending
* the space. ***** REVISIT WHEN WE HAVE MORE EXPERIENCE.
*/
@:native('com$sun$org$apache$xerces$internal$dom$DocumentImpl$LEntry') @:internal extern class DocumentImpl_LEntry implements java.io.Serializable
{
	
}
/**
* NON-DOM INTERNAL: Return object for getEnclosingAttr. Carries
* (two values, the Attr node affected (if any) and its previous
* string value. Simple struct, no methods.
*/
@:native('com$sun$org$apache$xerces$internal$dom$DocumentImpl$EnclosingAttr') @:internal extern class DocumentImpl_EnclosingAttr implements java.io.Serializable
{
	
}

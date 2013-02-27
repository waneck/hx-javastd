package com.sun.org.apache.xml.internal.dtm.ref;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: DTMDefaultBaseTraversers.java,v 1.2.4.1 2005/09/15 08:15:00 suresh_emailid Exp $
*/
extern class DTMDefaultBaseTraversers extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
{
	/**
	* Construct a DTMDefaultBaseTraversers object from a DOM node.
	*
	* @param mgr The DTMManager who owns this DTM.
	* @param source The object that is used to specify the construction source.
	* @param dtmIdentity The DTM identity ID for this DTM.
	* @param whiteSpaceFilter The white space filter for this DTM, which may
	*                         be null.
	* @param xstringfactory The factory to use for creating XMLStrings.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool) : Void;
	
	/**
	* Construct a DTMDefaultBaseTraversers object from a DOM node.
	*
	* @param mgr The DTMManager who owns this DTM.
	* @param source The object that is used to specify the construction source.
	* @param dtmIdentity The DTM identity ID for this DTM.
	* @param whiteSpaceFilter The white space filter for this DTM, which may
	*                         be null.
	* @param xstringfactory The factory to use for creating XMLStrings.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	* @param blocksize The block size of the DTM.
	* @param usePrevsib true if we want to build the previous sibling node array.
	* @param newNameTable true if we want to use a new ExpandedNameTable for this DTM.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool, blocksize : Int, usePrevsib : Bool, newNameTable : Bool) : Void;
	
	/**
	* This returns a stateless "traverser", that can navigate
	* over an XPath axis, though perhaps not in document order.
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	*
	* @return A DTMAxisTraverser, or null if the given axis isn't supported.
	*/
	@:overload override public function getAxisTraverser(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$AncestorTraverser') @:internal extern class DTMDefaultBaseTraversers_AncestorTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node if this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$AncestorOrSelfTraverser') @:internal extern class DTMDefaultBaseTraversers_AncestorOrSelfTraverser extends DTMDefaultBaseTraversers_AncestorTraverser
{
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  To see if
	* the self node should be processed, use this function.
	*
	* @param context The context node of this traversal.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  To see if
	* the self node should be processed, use this function.  If the context
	* node does not match the expanded type ID, this function will return
	* false.
	*
	* @param context The context node of this traversal.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Attribute access
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$AttributeTraverser') @:internal extern class DTMDefaultBaseTraversers_AttributeTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$ChildTraverser') @:internal extern class DTMDefaultBaseTraversers_ChildTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Get the next indexed node that matches the expanded type ID.  Before
	* calling this function, one should first call
	* {@link #isIndexed(int) isIndexed} to make sure that the index can
	* contain nodes that match the given expanded type ID.
	*
	* @param axisRoot The root identity of the axis.
	* @param nextPotential The node found must match or occur after this node.
	* @param expandedTypeID The expanded type ID for the request.
	*
	* @return The node ID or NULL if not found.
	*/
	@:overload private function getNextIndexed(axisRoot : Int, nextPotential : Int, expandedTypeID : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* that the traversal starts from.
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* of origin for the traversal -- its "root node" or starting point.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Super class for derived classes that want a convenient way to access
* the indexing mechanism.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$IndexedDTMAxisTraverser') @:internal extern class DTMDefaultBaseTraversers_IndexedDTMAxisTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Tell if the indexing is on and the given expanded type ID matches
	* what is in the indexes.  Derived classes should call this before
	* calling {@link #getNextIndexed(int, int, int) getNextIndexed} method.
	*
	* @param expandedTypeID The expanded type ID being requested.
	*
	* @return true if it is OK to call the
	*         {@link #getNextIndexed(int, int, int) getNextIndexed} method.
	*/
	@:overload @:final private function isIndexed(expandedTypeID : Int) : Bool;
	
	/**
	* Tell if a node is outside the axis being traversed.  This method must be
	* implemented by derived classes, and must be robust enough to handle any
	* node that occurs after the axis root.
	*
	* @param axisRoot The root identity of the axis.
	* @param identity The node in question.
	*
	* @return true if the given node falls outside the axis being traversed.
	*/
	@:overload @:abstract private function isAfterAxis(axisRoot : Int, identity : Int) : Bool;
	
	/**
	* Tell if the axis has been fully processed to tell if a the wait for
	* an arriving node should terminate.  This method must be implemented
	* be a derived class.
	*
	* @param axisRoot The root identity of the axis.
	*
	* @return true if the axis has been fully processed.
	*/
	@:overload @:abstract private function axisHasBeenProcessed(axisRoot : Int) : Bool;
	
	/**
	* Get the next indexed node that matches the expanded type ID.  Before
	* calling this function, one should first call
	* {@link #isIndexed(int) isIndexed} to make sure that the index can
	* contain nodes that match the given expanded type ID.
	*
	* @param axisRoot The root identity of the axis.
	* @param nextPotential The node found must match or occur after this node.
	* @param expandedTypeID The expanded type ID for the request.
	*
	* @return The node ID or NULL if not found.
	*/
	@:overload private function getNextIndexed(axisRoot : Int, nextPotential : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$DescendantTraverser') @:internal extern class DTMDefaultBaseTraversers_DescendantTraverser extends DTMDefaultBaseTraversers_IndexedDTMAxisTraverser
{
	/**
	* Get the first potential identity that can be returned.  This should
	* be overridded by classes that need to return the self node.
	*
	* @param identity The node identity of the root context of the traversal.
	*
	* @return The first potential node that can be in the traversal.
	*/
	@:overload private function getFirstPotential(identity : Int) : Int;
	
	/**
	* Tell if the axis has been fully processed to tell if a the wait for
	* an arriving node should terminate.
	*
	* @param axisRoot The root identity of the axis.
	*
	* @return true if the axis has been fully processed.
	*/
	@:overload override private function axisHasBeenProcessed(axisRoot : Int) : Bool;
	
	/**
	* Get the subtree root identity from the handle that was passed in by
	* the caller.  Derived classes may override this to change the root
	* context of the traversal.
	*
	* @param handle handle to the root context.
	* @return identity of the root of the subtree.
	*/
	@:overload private function getSubtreeRoot(handle : Int) : Int;
	
	/**
	* Tell if this node identity is a descendant.  Assumes that
	* the node info for the element has already been obtained.
	*
	* %REVIEW% This is really parentFollowsRootInDocumentOrder ...
	* which fails if the parent starts after the root ends.
	* May be sufficient for this class's logic, but misleadingly named!
	*
	* @param subtreeRootIdentity The root context of the subtree in question.
	* @param identity The index number of the node in question.
	* @return true if the index is a descendant of _startNode.
	*/
	@:overload private function isDescendant(subtreeRootIdentity : Int, identity : Int) : Bool;
	
	/**
	* Tell if a node is outside the axis being traversed.  This method must be
	* implemented by derived classes, and must be robust enough to handle any
	* node that occurs after the axis root.
	*
	* @param axisRoot The root identity of the axis.
	* @param identity The node in question.
	*
	* @return true if the given node falls outside the axis being traversed.
	*/
	@:overload override private function isAfterAxis(axisRoot : Int, identity : Int) : Bool;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* of origin for the traversal -- its "root node" or starting point.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$DescendantOrSelfTraverser') @:internal extern class DTMDefaultBaseTraversers_DescendantOrSelfTraverser extends DTMDefaultBaseTraversers_DescendantTraverser
{
	/**
	* Get the first potential identity that can be returned, which is the
	* axis context, in this case.
	*
	* @param identity The node identity of the root context of the traversal.
	*
	* @return The axis context.
	*/
	@:overload override private function getFirstPotential(identity : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  To see if
	* the self node should be processed, use this function.
	*
	* @param context The context node of this traversal.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	
}
/**
* Implements traversal of the entire subtree, including the root node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$AllFromNodeTraverser') @:internal extern class DTMDefaultBaseTraversers_AllFromNodeTraverser extends DTMDefaultBaseTraversers_DescendantOrSelfTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	
}
/**
* Implements traversal of the following access, in document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$FollowingTraverser') @:internal extern class DTMDefaultBaseTraversers_FollowingTraverser extends DTMDefaultBaseTraversers_DescendantTraverser
{
	/**
	* Get the first of the following.
	*
	* @param context The context node of this traversal. This is the point
	* that the traversal starts from.
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* Get the first of the following.
	*
	* @param context The context node of this traversal. This is the point
	* of origin for the traversal -- its "root node" or starting point.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$FollowingSiblingTraverser') @:internal extern class DTMDefaultBaseTraversers_FollowingSiblingTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$NamespaceDeclsTraverser') @:internal extern class DTMDefaultBaseTraversers_NamespaceDeclsTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$NamespaceTraverser') @:internal extern class DTMDefaultBaseTraversers_NamespaceTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$ParentTraverser') @:internal extern class DTMDefaultBaseTraversers_ParentTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* that the traversal starts from.
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* of origin for the traversal -- its "root node" or starting point.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(current : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$PrecedingTraverser') @:internal extern class DTMDefaultBaseTraversers_PrecedingTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Tell if the current identity is an ancestor of the context identity.
	* This is an expensive operation, made worse by the stateless traversal.
	* But the preceding axis is used fairly infrequently.
	*
	* @param contextIdent The context node of the axis traversal.
	* @param currentIdent The node in question.
	* @return true if the currentIdent node is an ancestor of contextIdent.
	*/
	@:overload private function isAncestor(contextIdent : Int, currentIdent : Int) : Bool;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor and the Preceding axis,
* in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser') @:internal extern class DTMDefaultBaseTraversers_PrecedingAndAncestorTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$PrecedingSiblingTraverser') @:internal extern class DTMDefaultBaseTraversers_PrecedingSiblingTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Self axis.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$SelfTraverser') @:internal extern class DTMDefaultBaseTraversers_SelfTraverser extends com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
{
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  To see if
	* the self node should be processed, use this function.
	*
	* @param context The context node of this traversal.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  To see if
	* the self node should be processed, use this function.  If the context
	* node does not match the expanded type ID, this function will return
	* false.
	*
	* @param context The context node of this traversal.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return Always return NULL for this axis.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Ancestor access, in reverse document order.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$AllFromRootTraverser') @:internal extern class DTMDefaultBaseTraversers_AllFromRootTraverser extends DTMDefaultBaseTraversers_AllFromNodeTraverser
{
	/**
	* Return the root.
	*
	* @param context The context node of this traversal.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* Return the root if it matches the expanded type ID.
	*
	* @param context The context node of this traversal.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* Implements traversal of the Self axis.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$RootTraverser') @:internal extern class DTMDefaultBaseTraversers_RootTraverser extends DTMDefaultBaseTraversers_AllFromRootTraverser
{
	/**
	* Return the root if it matches the expanded type ID,
	* else return null (nothing found)
	*
	* @param context The context node of this traversal.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	/**
	* Traverse to the next node after the current node.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	*
	* @return Always return NULL for this axis.
	*/
	@:overload override public function next(context : Int, current : Int) : Int;
	
	/**
	* Traverse to the next node after the current node that is matched
	* by the expanded type ID.
	*
	* @param context The context node of this iteration.
	* @param current The current node of the iteration.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the next node in the iteration, or DTM.NULL.
	*/
	@:overload override public function next(context : Int, current : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* A non-xpath axis, returns all nodes that aren't namespaces or attributes,
* from and including the root.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser') @:internal extern class DTMDefaultBaseTraversers_DescendantOrSelfFromRootTraverser extends DTMDefaultBaseTraversers_DescendantTraverser
{
	/**
	* Get the first potential identity that can be returned, which is the axis
	* root context in this case.
	*
	* @param identity The node identity of the root context of the traversal.
	*
	* @return The identity argument.
	*/
	@:overload override private function getFirstPotential(identity : Int) : Int;
	
	/**
	* Get the first potential identity that can be returned.
	* @param handle handle to the root context.
	* @return identity of the root of the subtree.
	*/
	@:overload override private function getSubtreeRoot(handle : Int) : Int;
	
	/**
	* Return the root.
	*
	* @param context The context node of this traversal.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* of origin for the traversal -- its "root node" or starting point.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	
}
/**
* A non-xpath axis, returns all nodes that aren't namespaces or attributes,
* from but not including the root.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseTraversers$DescendantFromRootTraverser') @:internal extern class DTMDefaultBaseTraversers_DescendantFromRootTraverser extends DTMDefaultBaseTraversers_DescendantTraverser
{
	/**
	* Get the first potential identity that can be returned, which is the axis
	* root context in this case.
	*
	* @param identity The node identity of the root context of the traversal.
	*
	* @return The identity argument.
	*/
	@:overload override private function getFirstPotential(identity : Int) : Int;
	
	/**
	* Get the first potential identity that can be returned.
	* @param handle handle to the root context.
	* @return identity of the root of the subtree.
	*/
	@:overload override private function getSubtreeRoot(handle : Int) : Int;
	
	/**
	* Return the root.
	*
	* @param context The context node of this traversal.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int) : Int;
	
	/**
	* By the nature of the stateless traversal, the context node can not be
	* returned or the iteration will go into an infinate loop.  So to traverse
	* an axis, the first function must be used to get the first node.
	*
	* <p>This method needs to be overloaded only by those axis that process
	* the self node. <\p>
	*
	* @param context The context node of this traversal. This is the point
	* of origin for the traversal -- its "root node" or starting point.
	* @param expandedTypeID The expanded type ID that must match.
	*
	* @return the first node in the traversal.
	*/
	@:overload override public function first(context : Int, expandedTypeID : Int) : Int;
	
	
}

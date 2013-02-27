package javax.swing;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SwingWorker<T, V> implements java.util.concurrent.RunnableFuture<T>
{
	/**
	* Constructs this {@code SwingWorker}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Computes a result, or throws an exception if unable to do so.
	*
	* <p>
	* Note that this method is executed only once.
	*
	* <p>
	* Note: this method is executed in a background thread.
	*
	*
	* @return the computed result
	* @throws Exception if unable to compute a result
	*
	*/
	@:overload @:abstract private function doInBackground() : T;
	
	/**
	* Sets this {@code Future} to the result of computation unless
	* it has been cancelled.
	*/
	@:overload @:final public function run() : Void;
	
	/**
	* Sends data chunks to the {@link #process} method. This method is to be
	* used from inside the {@code doInBackground} method to deliver
	* intermediate results
	* for processing on the <i>Event Dispatch Thread</i> inside the
	* {@code process} method.
	*
	* <p>
	* Because the {@code process} method is invoked asynchronously on
	* the <i>Event Dispatch Thread</i>
	* multiple invocations to the {@code publish} method
	* might occur before the {@code process} method is executed. For
	* performance purposes all these invocations are coalesced into one
	* invocation with concatenated arguments.
	*
	* <p>
	* For example:
	*
	* <pre>
	* publish(&quot;1&quot;);
	* publish(&quot;2&quot;, &quot;3&quot;);
	* publish(&quot;4&quot;, &quot;5&quot;, &quot;6&quot;);
	* </pre>
	*
	* might result in:
	*
	* <pre>
	* process(&quot;1&quot;, &quot;2&quot;, &quot;3&quot;, &quot;4&quot;, &quot;5&quot;, &quot;6&quot;)
	* </pre>
	*
	* <p>
	* <b>Sample Usage</b>. This code snippet loads some tabular data and
	* updates {@code DefaultTableModel} with it. Note that it safe to mutate
	* the tableModel from inside the {@code process} method because it is
	* invoked on the <i>Event Dispatch Thread</i>.
	*
	* <pre>
	* class TableSwingWorker extends
	*         SwingWorker&lt;DefaultTableModel, Object[]&gt; {
	*     private final DefaultTableModel tableModel;
	*
	*     public TableSwingWorker(DefaultTableModel tableModel) {
	*         this.tableModel = tableModel;
	*     }
	*
	*     {@code @Override}
	*     protected DefaultTableModel doInBackground() throws Exception {
	*         for (Object[] row = loadData();
	*                  ! isCancelled() &amp;&amp; row != null;
	*                  row = loadData()) {
	*             publish((Object[]) row);
	*         }
	*         return tableModel;
	*     }
	*
	*     {@code @Override}
	*     protected void process(List&lt;Object[]&gt; chunks) {
	*         for (Object[] row : chunks) {
	*             tableModel.addRow(row);
	*         }
	*     }
	* }
	* </pre>
	*
	* @param chunks intermediate results to process
	*
	* @see #process
	*
	*/
	@:overload @:final private function publish(chunks : java.NativeArray<V>) : Void;
	
	/**
	* Receives data chunks from the {@code publish} method asynchronously on the
	* <i>Event Dispatch Thread</i>.
	*
	* <p>
	* Please refer to the {@link #publish} method for more details.
	*
	* @param chunks intermediate results to process
	*
	* @see #publish
	*
	*/
	@:overload private function process(chunks : java.util.List<V>) : Void;
	
	/**
	* Executed on the <i>Event Dispatch Thread</i> after the {@code doInBackground}
	* method is finished. The default
	* implementation does nothing. Subclasses may override this method to
	* perform completion actions on the <i>Event Dispatch Thread</i>. Note
	* that you can query status inside the implementation of this method to
	* determine the result of this task or whether this task has been cancelled.
	*
	* @see #doInBackground
	* @see #isCancelled()
	* @see #get
	*/
	@:overload private function done() : Void;
	
	/**
	* Sets the {@code progress} bound property.
	* The value should be from 0 to 100.
	*
	* <p>
	* Because {@code PropertyChangeListener}s are notified asynchronously on
	* the <i>Event Dispatch Thread</i> multiple invocations to the
	* {@code setProgress} method might occur before any
	* {@code PropertyChangeListeners} are invoked. For performance purposes
	* all these invocations are coalesced into one invocation with the last
	* invocation argument only.
	*
	* <p>
	* For example, the following invokations:
	*
	* <pre>
	* setProgress(1);
	* setProgress(2);
	* setProgress(3);
	* </pre>
	*
	* might result in a single {@code PropertyChangeListener} notification with
	* the value {@code 3}.
	*
	* @param progress the progress value to set
	* @throws IllegalArgumentException is value not from 0 to 100
	*/
	@:overload @:final private function setProgress(progress : Int) : Void;
	
	/**
	* Returns the {@code progress} bound property.
	*
	* @return the progress bound property.
	*/
	@:overload @:final public function getProgress() : Int;
	
	/**
	* Schedules this {@code SwingWorker} for execution on a <i>worker</i>
	* thread. There are a number of <i>worker</i> threads available. In the
	* event all <i>worker</i> threads are busy handling other
	* {@code SwingWorkers} this {@code SwingWorker} is placed in a waiting
	* queue.
	*
	* <p>
	* Note:
	* {@code SwingWorker} is only designed to be executed once.  Executing a
	* {@code SwingWorker} more than once will not result in invoking the
	* {@code doInBackground} method twice.
	*/
	@:overload @:final public function execute() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:final public function cancel(mayInterruptIfRunning : Bool) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:final public function isCancelled() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:final public function isDone() : Bool;
	
	/**
	* {@inheritDoc}
	* <p>
	* Note: calling {@code get} on the <i>Event Dispatch Thread</i> blocks
	* <i>all</i> events, including repaints, from being processed until this
	* {@code SwingWorker} is complete.
	*
	* <p>
	* When you want the {@code SwingWorker} to block on the <i>Event
	* Dispatch Thread</i> we recommend that you use a <i>modal dialog</i>.
	*
	* <p>
	* For example:
	*
	* <pre>
	* class SwingWorkerCompletionWaiter extends PropertyChangeListener {
	*     private JDialog dialog;
	*
	*     public SwingWorkerCompletionWaiter(JDialog dialog) {
	*         this.dialog = dialog;
	*     }
	*
	*     public void propertyChange(PropertyChangeEvent event) {
	*         if (&quot;state&quot;.equals(event.getPropertyName())
	*                 &amp;&amp; SwingWorker.StateValue.DONE == event.getNewValue()) {
	*             dialog.setVisible(false);
	*             dialog.dispose();
	*         }
	*     }
	* }
	* JDialog dialog = new JDialog(owner, true);
	* swingWorker.addPropertyChangeListener(
	*     new SwingWorkerCompletionWaiter(dialog));
	* swingWorker.execute();
	* //the dialog will be visible until the SwingWorker is done
	* dialog.setVisible(true);
	* </pre>
	*/
	@:overload @:final public function get() : T;
	
	/**
	* {@inheritDoc}
	* <p>
	* Please refer to {@link #get} for more details.
	*/
	@:overload @:final public function get(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : T;
	
	/**
	* Adds a {@code PropertyChangeListener} to the listener list. The listener
	* is registered for all properties. The same listener object may be added
	* more than once, and will be called as many times as it is added. If
	* {@code listener} is {@code null}, no exception is thrown and no action is taken.
	*
	* <p>
	* Note: This is merely a convenience wrapper. All work is delegated to
	* {@code PropertyChangeSupport} from {@link #getPropertyChangeSupport}.
	*
	* @param listener the {@code PropertyChangeListener} to be added
	*/
	@:overload @:final public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a {@code PropertyChangeListener} from the listener list. This
	* removes a {@code PropertyChangeListener} that was registered for all
	* properties. If {@code listener} was added more than once to the same
	* event source, it will be notified one less time after being removed. If
	* {@code listener} is {@code null}, or was never added, no exception is
	* thrown and no action is taken.
	*
	* <p>
	* Note: This is merely a convenience wrapper. All work is delegated to
	* {@code PropertyChangeSupport} from {@link #getPropertyChangeSupport}.
	*
	* @param listener the {@code PropertyChangeListener} to be removed
	*/
	@:overload @:final public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Reports a bound property update to any registered listeners. No event is
	* fired if {@code old} and {@code new} are equal and non-null.
	*
	* <p>
	* This {@code SwingWorker} will be the source for
	* any generated events.
	*
	* <p>
	* When called off the <i>Event Dispatch Thread</i>
	* {@code PropertyChangeListeners} are notified asynchronously on
	* the <i>Event Dispatch Thread</i>.
	* <p>
	* Note: This is merely a convenience wrapper. All work is delegated to
	* {@code PropertyChangeSupport} from {@link #getPropertyChangeSupport}.
	*
	*
	* @param propertyName the programmatic name of the property that was
	*        changed
	* @param oldValue the old value of the property
	* @param newValue the new value of the property
	*/
	@:overload @:final public function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Returns the {@code PropertyChangeSupport} for this {@code SwingWorker}.
	* This method is used when flexible access to bound properties support is
	* needed.
	* <p>
	* This {@code SwingWorker} will be the source for
	* any generated events.
	*
	* <p>
	* Note: The returned {@code PropertyChangeSupport} notifies any
	* {@code PropertyChangeListener}s asynchronously on the <i>Event Dispatch
	* Thread</i> in the event that {@code firePropertyChange} or
	* {@code fireIndexedPropertyChange} are called off the <i>Event Dispatch
	* Thread</i>.
	*
	* @return {@code PropertyChangeSupport} for this {@code SwingWorker}
	*/
	@:overload @:final public function getPropertyChangeSupport() : java.beans.PropertyChangeSupport;
	
	/**
	* Returns the {@code SwingWorker} state bound property.
	*
	* @return the current state
	*/
	@:overload @:final public function getState() : SwingWorker_StateValue;
	
	
}
/**
* Values for the {@code state} bound property.
* @since 1.6
*/
@:require(java6) @:native('javax$swing$SwingWorker$StateValue') extern enum SwingWorker_StateValue
{
	/**
	* Initial {@code SwingWorker} state.
	*/
	PENDING;
	/**
	* {@code SwingWorker} is {@code STARTED}
	* before invoking {@code doInBackground}.
	*/
	STARTED;
	/**
	* {@code SwingWorker} is {@code DONE}
	* after {@code doInBackground} method
	* is finished.
	*/
	DONE;
	
}

@:native('javax$swing$SwingWorker$DoSubmitAccumulativeRunnable') @:internal extern class SwingWorker_DoSubmitAccumulativeRunnable extends sun.swing.AccumulativeRunnable<java.lang.Runnable> implements java.awt.event.ActionListener
{
	@:overload override private function run(args : java.util.List<java.lang.Runnable>) : Void;
	
	@:overload override private function submit() : Void;
	
	@:overload public function actionPerformed(event : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$SwingWorker$SwingWorkerPropertyChangeSupport') @:internal extern class SwingWorker_SwingWorkerPropertyChangeSupport extends java.beans.PropertyChangeSupport
{
	@:overload override public function firePropertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}

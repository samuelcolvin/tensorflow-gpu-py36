import tensorflow as tf
with tf.device('/gpu:0'):
    a = tf.constant(3.0, dtype=tf.float32)
    sess = tf.Session()
    print(sess.run([a]))

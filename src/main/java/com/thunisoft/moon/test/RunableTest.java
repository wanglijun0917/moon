package com.thunisoft.moon.test;

public class RunableTest implements Runnable {

	int num = 0;
	@Override
	public void run() {
		 System.out.println("一， 线程名：" + Thread.currentThread().getName());
	        get();
	}

	public  void get(){
        System.out.println("二，线程名：" + Thread.currentThread().getName());
        //reentrantLock.lock();
        System.out.println("三，线程名：" + Thread.currentThread().getName());
        //reentrantLock.unlock();
        System.out.println(getint()+"====五，线程名：" + Thread.currentThread().getName());
    }

    public int getint(){
    	num +=1;
        //reentrantLock.lock();
        System.out.println("四，线程名:" + Thread.currentThread().getName());
        //reentrantLock.unlock();
        return num;
    }

}

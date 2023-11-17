FROM php:7.3-fpm

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' >>/etc/apt/sources.list
RUN echo 'deb http://mirrors.ustc.edu.cn/debian stable-updates main contrib non-free' >>/etc/apt/sources.list

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
RUN apt-get clean
RUN apt-get update
RUN apt-get install --assume-yes apt-utils
RUN apt-get install -y libssl-dev

# 安装扩展
RUN docker-php-ext-install pdo_mysql


# install git and composer
RUN apt-get install -y git \
&& curl -sS https://getcomposer.org/installer | php \
&& mv composer.phar /usr/bin/composer \
&& composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

#install redis ext
COPY ./pkg/redis-4.2.0.tar /home/redis.tar
RUN cd /home \
&& tar -xvf redis.tar \
&& mv redis-* redis \
&& cd redis \
&& phpize \
&& ./configure \
&& make \
&& make install \
&& echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini


# #install phalcon ext
# COPY ./pkg/cphalcon-3.4.3.tar /home/cphalcon.tar
# RUN cd /home \
# && tar -xvf cphalcon.tar \
# && mv cphalcon-* phalcon \
# && cd phalcon/build \
# && ./install \
# && echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/phalcon.ini



# #install envsvr ext
# COPY ./pkg/encsvr_7.3.8.tar.gz /home/encsvr.tar.gz 
# RUN cd /home \
# && tar -xvf encsvr.tar.gz \
# && cd encsvr \
# && phpize \
# && ./configure \
# && make \
# && make install \
# && echo "extension=encsvr.so" > /usr/local/etc/php/conf.d/encsvr.ini


# #install libkafka 
# COPY ./pkg/librdkafka.tar /home/librdkafka.tar
# RUN cd /home \
# && tar -xvf librdkafka.tar \
# && cd librdkafka \
# && ./configure \
# && make \
# && make install 

# #install kafka ext
# COPY ./pkg/rdkafka-3.1.2.tar /home/rdkafka.tar
# RUN cd /home \
# && tar -xvf rdkafka.tar \
# && mv rdkafka-* rdkafka \
# && cd rdkafka \
# && phpize \
# && ./configure \
# && make all -j 5 \
# && make install \
# && echo "extension=rdkafka.so" > /usr/local/etc/php/conf.d/rdkafka.ini


# #install mongodb ext
# COPY ./pkg/mongo-php-driver.tar /home/mongo-php-driver.tar
# RUN cd /home \
# && tar -xvf mongo-php-driver.tar \
# && cd mongo-php-driver \
# && phpize \
# && ./configure \
# && make all \
# && make install \
# && echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini


@jl-org/tool / [Modules](modules.md)

# 介绍
TypeScript编写的工具函数

支持 `ESM` | `CommonJS` | `iife`

**iife** 模式下，全局导出一个 `_jl` 对象

## 安装
```bash
npm i @jl-org/tool
```

## 文档地址
> 其实不如看 *VSCode* 的代码提示方便。  
鼠标悬浮在变量上即可查看，几乎所有地方我都写了文档注释  

https://beixiyo.github.io/

## 包含如下类型工具
- [各种常用工具](#各种常用工具)
- [DOM](#dom)
- [分时渲染函数，再多函数也不卡顿](#分时渲染函数)
- [Media API](#media-api)
- [颜色处理](#颜色处理)
- [一些数据结构，如：最小堆](#数据结构)
- [动画处理](#动画处理)
- [事件分发，如消息订阅](#事件分发)
- [*is* 判断](#is-判断)
- [canvas](#canvas)
- [*Web* 小插件，如：客户端同步服务器更新](#web-小插件)

## 各种常用工具
```ts
/** 获取类型 */
export declare const getType: (data: any) => string;

/** 随机长度为`10`的字符串 */
export declare const randomStr: () => string;

/** 今年的第几天 */
export declare const dayOfYear: (date?: Date) => number;

/** 获取时分秒 */
export declare const timeFromDate: (date: Date) => string;

/** 摄氏度转华氏度 */
export declare const celsiusToFahrenheit: (celsius: number) => number;

/** 华氏度转摄氏度 */
export declare const fahrenheitToCelsius: (fahrenheit: number) => number;

/** 获取日期间隔 单位(天) */
export declare function dayDiff(date1: TimeType, date2: TimeType): number;

/**
 * 获取随机范围整型数值 不包含最大值
 */
export declare function getRandomNum(min: number, max: number): number;

/**
 * 对数组求和
 * @param handler 可以对数组每一项进行操作，返回值将会被相加
 */
export declare function getSum<T>(arr: T[], handler?: (item: T) => number): number;

/** 深拷贝 */
export declare function deepClone<T>(data: T, map?: WeakMap<WeakKey, any>): any;

/**
 * 深度比较对象 `Map | Set`无法使用
 * 支持循环引用比较
 */
export declare function deepCompare(o1: any, o2: any, seen?: WeakMap<WeakKey, any>): boolean;

/** 递归树拍平 */
export declare function arrToTree(arr: TreeData[]): TreeData[];

/**
 * 把数组分成 n 块
 * @param arr 数组
 * @param size 每个数组大小
 * @returns 返回二维数组
 */
export declare function arrToChunk<T>(arr: T[], size: number): T[][];

/** 二分查找，必须是正序的数组 */
export declare function binarySearch<T>(arr: T[], target: T): number;

/**
 * 截取字符串，默认补 `...` 到后面
 * 如果长度小于等于 `placeholder` 补充字符串的长度，则直接截取
 * @param str 字符串
 * @param len 需要截取的长度
 * @param placeholder 补在后面的字符串 默认`...`
 */
export declare function cutStr(str: string, len: number, placeholder?: string): string;

/**
 * 蛇形转驼峰 也可以指定转换其他的
 * @param key 需要转换的字符串
 * @param replaceStr 默认是 `_`，也就是蛇形转驼峰
 * @example
 * toCamel('test_a') => 'testA'
 * toCamel('test/a', '/') => 'testA'
 */
export declare function toCamel(key: string, replaceStr?: string): string;

/** 柯里化 */
export declare function curry(): any;

/**
 * 数字补齐精度
 * @param num 数字
 * @param precision 精度长度 默认`2`
 * @param placeholder 补齐内容 默认`0`
 * @returns
 */
export declare function padNum(num: string | number, precision?: number, placeholder?: string): string;

/**
 * 解决 Number.toFixed 计算错误
 * @example
 * 1.335.toFixed(2) => '1.33'
 * numFixed(1.335) => 1.34
 *
 * @param num 数值
 * @param precision 精度 默认 2
 */
export declare function numFixed(num: number, precision?: number): number;

/**
 * 日期补零 把`yyyy-MM-dd` 转成 `yyyy-MM-dd HH:mm:ss`
 * @param date 格式: `2016-06-10` 必须和它长度保持一致
 * @param placeholder 后面补充的字符串 默认`00:00:00`
 * @returns 如`2016-06-10 10:00:00`
 */
export declare function padDate(date: string, placeholder?: string): string;

/**
 * 把日期转为 `Date` 对象
 * @param date 日期，可以是字符串或者时间戳
 */
export declare function getValidDate(date: Date | string | number): string | number | Date;

/**
 * 返回给定日期是否小于某年`一月一日` 默认去年
 * @param curDate 当前日期
 * @param yearLen 年份长度，默认 `-1`，即去年
 */
export declare function isLtYear(curDate: Date | string | number, yearLen?: number): boolean;

/**
 * 生成 iconfont 的类名
 * @param name icon 名字
 * @param prefix 前缀默认 iconfont
 * @param suffix 后缀默认 icon
 * @param connector 连接符默认 -
 * @returns **iconfont icon-${name}**
 */
export declare function genIcon(name: string, prefix?: string, suffix?: string, connector?: string): string;

/**
 * 返回一个新对象，对象会提取值在 extractArr，中的元素
 * 例如提取所有空字符串
 * @example filterVals(data, [''])
 */
export declare function filterVals<T>(data: T, extractArr: any[]): Partial<T>;

/**
 * 返回一个新对象，对象会排除值在 excludeArr，中的元素
 * 例如排除所有空字符串
 * @example excludeVals(data, [''])
 */
export declare function excludeVals<T>(data: T, excludeArr: any[]): Partial<T>;

/**
 * 返回一个新对象，对象中会提取 `keys` 数组
 * 例如：提取 `name`
 * @example filterKeys(data, ['name'])
 */
export declare function filterKeys<T, K extends keyof T>(target: T, keys: K[]): Pick<T, Extract<keyof T, K>>;

/**
 * 返回一个新对象，对象中会排除 `keys` 数组
 * 例如：排除 `name`
 * @example excludeKeys(data, ['name'])
 */
export declare function excludeKeys<T, K extends keyof T>(target: T, keys: K[]): Omit<T, Extract<keyof T, K>>;
```

## DOM
```ts
/** 获取浏览器内容宽度 */
export declare function getWinWidth(): number;
/** 获取浏览器内容高度 */
export declare function getWinHeight(): number;

/**
 * 根据 `Blob` 下载
 * @param data 数据
 * @param filename 文件名
 */
export declare const downloadByData: (data: Blob, filename: string) => void;

/** 把`http`协议转换成当前站的 */
export declare const matchProtocol: (url: string) => string;

/**
 * 用cdn链接下载
 * @param url 链接
 * @param fileName 文件名
 */
export declare const downloadByUrl: (url: string, fileName: string) => Promise<void>;

/**
 * 根据原始设计稿宽度 等比例转换大小
 * @param px 像素大小
 * @param designSize 设计稿大小 默认`1920`
 * @param type 根据什么缩放 默认是宽度
 */
export declare const adaptPx: (px: number | string, designSize?: number, type?: 'height' | 'width') => string;

/** 处理`CSS`单位 */
export declare function handleCssUnit(value: string | number): string | number;

/**
 * 将像素值转换为`vw`或`vh`单位 如果传入百分比值 则直接返回
 * @param px - 要转换的像素值或百分比值
 * @param designSize 设计稿大小 默认为1920像素
 * @param unit 尺寸单位 默认为`vw`
 * @returns 转换后的值 带有指定单位
 */
export declare function pxToVw(px: number | string, designSize?: number, unit?: 'vw' | 'vh'): string | number;

/**
 * 获取样式表属性 如果单位是 px ，则会去除单位
 * @param el 元素
 * @param attr 样式属性键值
 * @param pseudoElt 伪元素
 */
export declare const getStyle: (el: HTMLElement, attr: string, pseudoElt?: string) => string | number;

/** 节流 */
export declare function throttle<P extends any[], T, R>(fn: (this: T, ...args: P) => R, delay?: number): (this: T, ...args: P) => R;

/** 防抖 */
export declare function debounce<P extends any[], T, R>(fn: (this: T, ...args: P) => R, delay?: number): (this: T, ...args: P) => void;

/** 获取选中的文本 */
export declare const getSelectedText: () => string;

/** 文本复制到剪贴板 */
export declare const copyToClipboard: (text: string) => Promise<void>;

/** 是否为深色模式 */
export declare const isDarkMode: () => boolean;

/** 是否滑倒页面底部 */
export declare const isToBottom: () => boolean;

/** 获取所有样式表 */
export declare const getAllStyle: () => Promise<string>;

/**
 * 打印 必须启动一个服务器才能用; ***建议使用事件交互，如按钮点击，否则可能打开多个窗口***
 * @param el 要打印的元素
 * @param styleStr 样式 建议使用`getAllStyle`函数，可不传
 * @param href 打开的链接 默认使用`location.href`
 */
export declare const print: Print;

/**
 * 判断页面所有图片是否加载完成
 * @param el 要判断的元素 默认 document
 * @returns 是否加载完成
 */
export declare const judgeImgLoad: (el?: Document) => Promise<boolean>;

/**
 * 判断图片的 src 是否可用，可用则返回图片
 * @param src 图片
 */
export declare const getImg: (src: string) => Promise<false | HTMLImageElement>;

/** Blob 转 Base64 */
export declare function blobToBase64(blob: Blob): Promise<string>;

/**
 * 返回一个双击键盘事件
 * @param code 上下左右
 * @param fn 双击后执行函数
 * @param gap 间隔时间
 */
export declare function doubleKeyDown<T, P, R>(code: KeyCode, fn: (this: T, ...args: P[]) => R, gap?: number): (e: KeyboardEvent) => R;

/**
 * 检查并设置父元素的`overflow: hidden`
 * @param el 当前元素
 */
export declare const setParentOverflow: (el: HTMLElement) => void;

/** 全屏 若已全屏 则退出全屏 */
export declare const fullScreen: (dom?: HTMLElement) => void;

/** 解析出`HTML`的所有字符串 */
export declare const HTMLToStr: (HTMLStr: string) => string;
```

## 分时渲染函数
```ts
/**
 * 类似`React`调度器，在浏览器空闲时，用`MessageChannel`调度任务。在任务很多时，可以避免卡顿
 * @param taskArr 任务数组
 * @param onEnd 任务完成的回调
 * @param needStop 是否停止任务
 */
export declare const scheduleTask: (taskArr: Function[], onEnd?: Function, needStop?: () => boolean) => void;
```

## Media API
```ts
/**
 * 录音
 * @example
 * const recorder = new Recorder()
 * await recorder.init()
 * recorder.start()
 */
export declare class Recorder {
    /** 录制的音频的临时 `URL` 。录制完毕自动赋值，每次录制前都会清空 */
    audioUrl: string;
    /** 录制的音频 `Blob`。录制完毕自动赋值 每次录制前都会清空 */
    chunks: Blob[];

    /**
     * @param onFinish 录音完成的回调
     */
    constructor(onFinish?: (audioUrl: string, chunk: Blob[]) => void);

    init(): Promise<string | undefined>;

    /** 开始录音 */
    start(): void;
    /** 停止录音，停止后，回调给构造器传递的 `onFinish` */
    stop(): void;

    /** 播放刚刚的录音，或者指定 base64 的录音 */
    play(url?: string): void;
}

/**
 * 语音播放
 * @example
 * const speaker = new Speaker('你好')
 * speaker.play()
 */
export declare class Speaker {
    /** 默认播放语音名称 */
    voiceName: string;
    /** 可播放语音列表 */
    voiceArr: SpeechSynthesisVoice[];
    /** 内部操作的实例对象 */
    speak: SpeechSynthesisUtterance;

    constructor(txt?: string, volume?: number, lang?: string);

    /**
     * 播放声音
     * @param onEnd 声音播放完毕的回调
     */
    play(onEnd?: (e: SpeechSynthesisEvent) => void): void;
    /** 停止 */
    stop(): void;
    /** 暂停 */
    pause(): void;
    /** 继续 */
    resume(): void;
    /** 设置播放文本 */
    setText(txt?: string): void;
    /** 设置音量 */
    setVolume(volume?: number): void;
    /** 设置声音类型 */
    setVoice(index: number): void;
    /** 设置语速 */
    setRate(rate: number): void;
    /** 设置音高 */
    setPitch(pitch: number): void;
}

/**
 * 语音转文字，默认中文识别
 * @example
 * const speakToTxt = new SpeakToTxt((data) => {
 *     console.log(data)
 * })
 * speakTxtBtn.onclick = () => speakToTxt.start()
 */
export declare class SpeakToTxt {

    /**
     * 调用 start 方法开始录音，默认中文识别
     * @param onResult 返回结果的回调
     * @param opts 配置项
     */
    constructor(onResult: OnResult, opts?: SpeakToTxtOpts);

    /** 开始识别 */
    start(): void;
    /** 停止识别 */
    stop(): void;
}

/**
 * 开启摄像头
 * @param callbackOrVideoEl 视频元素或者回调
 * @returns 停止播放的函数
 */
export declare const openCamera: (callbackOrVideoEl: HTMLVideoElement | ((stream: MediaStream) => void)) => Promise<Function>;

/** 录屏 */
export declare const screenCAP: (fileName?: string) => Promise<void>;
```

## 颜色处理
```ts
/** 获取十六进制随机颜色 */
export declare function getColor(): string;

/** 随机十六进制颜色数组 */
export declare function getColorArr(size: number): string[];

/**
### 把十六进制颜色转成 原始长度的颜色
  - #000 => #000000
  - #000f => #000000ff
 */
export declare function hexColorToRaw(color: string): string | void;

/** 十六进制 转 RGB */
export declare function hexToRGB(color: string): string;

/** rgb转十六进制 */
export declare function rgbToHex(color: string): string;

/**
 * 淡化颜色透明度 支持`rgb`和十六进制
 * @param color rgba(0, 239, 255, 1)
 * @param strength 淡化的强度
 * @returns 返回 RGBA 类似如下格式的颜色 `rgba(0, 0, 0, 0.1)`
 */
export declare function lightenColor(color: string, strength?: number): string | void;

/**
 * 颜色添加透明度 支持`rgb`和十六进制
 * @param color 颜色
 * @param opacity 透明度
 * @returns 返回十六进制 类似如下格式的颜色 `#ffffff11`
 */
export declare function colorAddOpacity(color: string, opacity?: number): string;
```

## 数据结构
```ts
/** 最小堆算法 */
export declare class MinHeap<T extends HeapItem> {
    readonly data: T[];

    get size(): number;
    isEmpty(): boolean;

    /** 返回堆顶的值 */
    peek(): T;

    push(...items: T[]): void;

    /** 删除并返回堆顶的值 */
    pop(): T;
}

/** 最大堆算法 */
export declare class MaxHeap<T extends HeapItem> {
    readonly data: T[];

    get size(): number;
    isEmpty(): boolean;

    /** 返回堆顶的值 */
    peek(): T;

    push(...items: T[]): void;

    /** 删除并返回堆顶的值 */
    pop(): T;
}
```

## 动画处理
```ts
/**
 * @param fn 将此函数放在`requestAnimationFrame`内递归执行 如果此函数返回`stop`则停止执行
 * @returns 返回一个函数 用于取消函数执行
 */
export declare const applyAnimation: (fn: () => 'stop' | void) => () => void;

/**
 * 根据传入的值 返回一个动画函数
 * @param stVal 动画起点 比如滚动起始位置
 * @param endVal 动画终点 比如滚动终点位置
 * @param animateStVal 动画起点对应的值
 * @param animateEndVal 动画终点对应的值
 * @param timeFunc 动画缓动函数 支持内置函数和自定义函数
 */
export declare function createAnimation(stVal: number, endVal: number, animateStVal: number, animateEndVal: number, timeFunc?: TimeFunc): (curVal: number) => number;

/**
 * 根据传入对象 随着时间推移 自动更新值
 * @param target 要修改的对象 如果是`CSSStyleDeclaration`对象 则单位默认为`px`
 * @param finalProps 要修改对象的最终属性值 不支持`transform`的复合属性
 * @param durationMS 动画持续时间
 * @param opt 配置项 可选参数; 动画单位优先级: `finalProps` > `opt.unit` > `rawEl(原始 DOM 的单位)`;
 *
 * 如果 ***target 是 CSSStyleDeclaration*** 并且
 * ***不是 transform*** 属性 并且
 * ***样式表和 finalProps 都没有单位***，则使用 `px` 作为 `CSS` 单位
 * @returns 返回一个停止动画函数
 */
export declare const createAnimationByTime: <T, P extends FinalProp>(target: T, finalProps: P, durationMS: number, opt?: AnimationOpt<T, P>) => () => void;

/**
 * 生成贝塞尔曲线函数
 * @param name 动画函数名称
 * @returns 一个接收`0 ~ 1`进度参数的函数
 */
export declare function genTimeFunc(name?: TimeFunc): (v: number) => number;

/**
 * 一个动画类 能够链式调用; 请先调用`start`函数, 参数和`createAnimationByTime`一致
 * @example
 * const aTo = new aTo()
 * aTo
 *     .start(...)
 *     .next(...)
 */
export declare class ATo {

    /**
     * 开始执行动画 首次执行请先调用此函数
     * @param target 要修改的对象 如果是`CSSStyleDeclaration`对象 则单位默认为`px`
     * @param finalProps 要修改对象的最终属性值
     * @param durationMS 动画持续时间
     * @param onUpdate 回调函数，可选值；建议当`props`为非数字时，可用此函数手动更改
     * @param opt 配置项 可选参数
     * @returns 返回一个停止动画函数
     */
    start<T, P extends FinalProp>(target: T, finalProps: P, durationMS: number, opt?: AnimationOpt<T, P>): this;

    /**
     * 等待上一个动画完成后执行 ***第一次请先调用`start`函数***
     * @param target 要修改的对象 如果是`CSSStyleDeclaration`对象 则单位默认为`px`
     * @param finalProps 要修改对象的最终属性值
     * @param durationMS 动画持续时间
     * @param onUpdate 回调函数，可选值；建议当`props`为非数字时，可用此函数手动更改
     * @param opt 配置项 可选参数
     * @returns 返回一个停止动画函数
     */
    next<T, P extends FinalProp>(target: T, finalProps: P, durationMS: number, opt?: AnimationOpt<T, P>): this;

    /** 停止所有动画 */
    stop(): void;
}
```

## 事件分发
```ts
/** 消息订阅与派发 */
export declare class EventBus {
    /**
     * 订阅
     * @param eventName 事件名
     * @param fn 接收函数
     */
    on(eventName: string, fn: Function): void;
    /**
     * 订阅一次
     * @param eventName 事件名
     * @param fn 接收函数
     */
    once(eventName: string, fn: Function): void;
    /**
     * 发送事件
     * @param eventName 事件名
     * @param args 不定参数
     */
    emit(eventName: string, ...args: any[]): void;
    /**
     * 取关
     * @param eventName 空字符或者不传代表重置所有
     * @param func 要取关的函数，为空取关该事件的所有函数
     */
    off(eventName?: string, func?: Function): void;
}

/**
 * 事件频道，用于管理事件
 * 可以批量触发，也可以单独触发
 */
export declare class Channel {
    /**
     * 添加监听
     * @param actionType 类型
     * @param func 函数
     * @returns 删除监听的 **函数**
     */
    add(actionType: ActionType, func: Function): () => void;
    /**
     * 删除某个类型 或者 某个类型的具体函数
     * @param actionType 类型
     * @param func 具体函数，不传则删除所有
     */
    del(actionType: ActionType, func?: Function): void;
    /**
     * 触发某个类型
     * @param actionType 类型
     * @param args 不定参数
     */
    trigger(actionType: ActionType, ...args: any[]): void;
}
export type ActionType = string | symbol;

```

## is 判断
```ts
/** 判断是否能强转成数字 */
export declare function isPureNum(value: string | number): boolean;

export declare const isStr: (s: any) => boolean;
export declare const isNum: (s: any) => boolean;
export declare const isBool: (s: any) => boolean;
export declare const isFn: (s: any) => boolean;
export declare const isObj: (s: any) => boolean;
export declare const isArr: (s: any) => boolean;

/** Object.is */
export declare const isSame: (a: any, b: any) => boolean;
```

## canvas
```ts
/**
 * 截取图片的一部分，返回 base64 | blob
 */
export declare function cutImg<T extends TransferType>(img: HTMLImageElement, resType: T, x?: number, y?: number, width?: number, height?: number, opts?: {
    type?: string;
    quality?: number;
}): HandleImgReturn<T>;

/**
 * 压缩图片
 * @param img 图片
 * @param resType 需要返回的文件格式
 * @param quality 压缩质量，默认 0.5
 * @param mimeType 图片类型，默认 `image/webp`。`image/jpeg | image/webp` 才能压缩，
 * @returns base64 | blob
 */
export declare function compressImg<T extends TransferType>(img: HTMLImageElement, resType: T, quality?: number, mimeType?: 'image/jpeg' | 'image/webp'): HandleImgReturn<T>;

type HandleImgReturn<T extends TransferType> = T extends 'blob' ? Promise<Blob> : Promise<string>;

/**
 * 根据半径和角度获取坐标
 * @param r 半径
 * @param deg 角度
 */
export declare function calcCoord(r: number, deg: number): number[];

/**
 * 创建一个指定宽高的画布
 * @param width 画布的宽度
 * @param height 画布的高度
 * @param options 上下文配置
 * @returns 包含画布和上下文的对象
 */
export declare function createCvs(width?: number, height?: number, options?: CanvasRenderingContext2DSettings): {
    cvs: HTMLCanvasElement;
    ctx: CanvasRenderingContext2D;
};

/**
 * 取出`canvas`用一维数组描述的颜色中 某个坐标的`RGBA`数组
 * 注意坐标从 0 开始
 * @param x 宽度中的第几列
 * @param y 高度中的第几行
 * @param imgData ctx.getImageData 方法获取的 ImageData 对象的 data 属性
 * @param width 图像区域宽度
 * @returns `RGBA`数组
 */
export declare function getPixel(x: number, y: number, imgData: ImageData['data'], width: number): Pixel;

/**
 * 美化 ctx.getImageData.data 属性
 * 每一行为一个大数组，每个像素点为一个小数组
 * @param imgData ctx.getImageData 方法获取的 ImageData 对象的 data 属性
 * @param width 图像区域宽度
 */
export declare function parseImgData(imgData: ImageData['data'], width: number, height: number): number[][][];

/** 给 canvas 某个像素点填充颜色的函数 */
export declare function fillPixel(ctx: CanvasRenderingContext2D, x: number, y: number, color: string): void;
```

## Web 小插件
```ts
/** 检查页面更新 */
export declare function autoUpdate(opts?: Opts): void;
```

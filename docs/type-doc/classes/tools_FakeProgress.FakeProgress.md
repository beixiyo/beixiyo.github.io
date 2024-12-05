[@jl-org/tool](../README.md) / [Modules](../modules.md) / [tools/FakeProgress](../modules/tools_FakeProgress.md) / FakeProgress

# Class: FakeProgress

[tools/FakeProgress](../modules/tools_FakeProgress.md).FakeProgress

虚假进度条

**`Example`**

```ts
const progress = new FakeProgress({ ... })
console.log(progress.progress)
```

## Table of contents

### Constructors

- [constructor](tools_FakeProgress.FakeProgress.md#constructor)

### Properties

- [onChange](tools_FakeProgress.FakeProgress.md#onchange)
- [progress](tools_FakeProgress.FakeProgress.md#progress)
- [timeConstant](tools_FakeProgress.FakeProgress.md#timeconstant)

### Methods

- [end](tools_FakeProgress.FakeProgress.md#end)
- [setProgress](tools_FakeProgress.FakeProgress.md#setprogress)
- [start](tools_FakeProgress.FakeProgress.md#start)
- [stop](tools_FakeProgress.FakeProgress.md#stop)

## Constructors

### constructor

• **new FakeProgress**(`fakeProgressOpts?`): [`FakeProgress`](tools_FakeProgress.FakeProgress.md)

#### Parameters

| Name | Type |
| :------ | :------ |
| `fakeProgressOpts` | [`FakeProgressOpts`](../modules/tools_FakeProgress.md#fakeprogressopts) |

#### Returns

[`FakeProgress`](tools_FakeProgress.FakeProgress.md)

#### Defined in

[src/tools/FakeProgress.ts:23](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L23)

## Properties

### onChange

• `Optional` **onChange**: (`progress`: `number`) => `void`

#### Type declaration

▸ (`progress`): `void`

##### Parameters

| Name | Type |
| :------ | :------ |
| `progress` | `number` |

##### Returns

`void`

#### Defined in

[src/tools/FakeProgress.ts:16](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L16)

___

### progress

• **progress**: `number` = `0`

进度，0 ~ 1 之间

#### Defined in

[src/tools/FakeProgress.ts:14](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L14)

___

### timeConstant

• **timeConstant**: `number` = `10000`

#### Defined in

[src/tools/FakeProgress.ts:12](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L12)

## Methods

### end

▸ **end**(): `void`

#### Returns

`void`

#### Defined in

[src/tools/FakeProgress.ts:59](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L59)

___

### setProgress

▸ **setProgress**(`value`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | `number` |

#### Returns

`void`

#### Defined in

[src/tools/FakeProgress.ts:64](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L64)

___

### start

▸ **start**(): `void`

#### Returns

`void`

#### Defined in

[src/tools/FakeProgress.ts:39](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L39)

___

### stop

▸ **stop**(): `void`

#### Returns

`void`

#### Defined in

[src/tools/FakeProgress.ts:55](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L55)

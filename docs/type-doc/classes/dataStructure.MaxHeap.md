[@jl-org/tool](../README.md) / [Modules](../modules.md) / [dataStructure](../modules/dataStructure.md) / MaxHeap

# Class: MaxHeap\<T\>

[dataStructure](../modules/dataStructure.md).MaxHeap

最大堆算法

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`HeapItem`](../interfaces/dataStructure.HeapItem.md) |

## Table of contents

### Constructors

- [constructor](dataStructure.MaxHeap.md#constructor)

### Properties

- [data](dataStructure.MaxHeap.md#data)

### Accessors

- [size](dataStructure.MaxHeap.md#size)

### Methods

- [isEmpty](dataStructure.MaxHeap.md#isempty)
- [peek](dataStructure.MaxHeap.md#peek)
- [pop](dataStructure.MaxHeap.md#pop)
- [push](dataStructure.MaxHeap.md#push)

## Constructors

### constructor

• **new MaxHeap**\<`T`\>(): [`MaxHeap`](dataStructure.MaxHeap.md)\<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`HeapItem`](../interfaces/dataStructure.HeapItem.md) |

#### Returns

[`MaxHeap`](dataStructure.MaxHeap.md)\<`T`\>

#### Defined in

[src/dataStructure/Heap.ts:120](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L120)

## Properties

### data

• `Readonly` **data**: `T`[]

#### Defined in

[src/dataStructure/Heap.ts:118](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L118)

## Accessors

### size

• `get` **size**(): `number`

#### Returns

`number`

#### Defined in

[src/dataStructure/Heap.ts:124](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L124)

## Methods

### isEmpty

▸ **isEmpty**(): `boolean`

#### Returns

`boolean`

#### Defined in

[src/dataStructure/Heap.ts:128](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L128)

___

### peek

▸ **peek**(): `T`

返回堆顶的值

#### Returns

`T`

#### Defined in

[src/dataStructure/Heap.ts:133](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L133)

___

### pop

▸ **pop**(): `undefined` \| `T`

删除并返回堆顶的值

#### Returns

`undefined` \| `T`

#### Defined in

[src/dataStructure/Heap.ts:142](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L142)

___

### push

▸ **push**(`...items`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `...items` | `T`[] |

#### Returns

`void`

#### Defined in

[src/dataStructure/Heap.ts:137](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L137)
